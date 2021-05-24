import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vehical_maintenance/OTP.dart';
import 'package:vehical_maintenance/viewall.dart';

class PersonalDetailsCard extends StatefulWidget {
  final String heading, title,name,emailid,vehiclename,vehicleregisternum,text;

  const PersonalDetailsCard({Key key,this.heading,this.title,this.name,this.emailid,this.vehiclename,this.vehicleregisternum,this.text })
      : super(key: key);

  @override
  _PersonalDetailsCardState createState() => _PersonalDetailsCardState();
}

class _PersonalDetailsCardState extends State<PersonalDetailsCard> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0,top:35),
            child: Row(
              children: <Widget>[
                Text(widget.heading,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w800,
                    ))

              ],
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(top:35,left:20),
            child: Row(
              children: <Widget>[
                Text(widget.title,
                  style: TextStyle(color: Color.fromRGBO(79,79,79,1),
                    fontSize:14,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w600,
                    //fontWeight: FontWeight.w600
                  ),)

              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:20.0,right: 20,top:40),
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    color: Color.fromRGBO(242,242,242,1)
                ),
              ),
            ),
            child: Row(
              children: [
                new Flexible(
                  child:  TextField(
                    decoration: InputDecoration(
                      hintText: widget.name,
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(189,189,189,1),
                          fontSize:14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400),
                      border: InputBorder.none,
                    ),
                  ),),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:20.0,right: 20,top:20),
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    color: Color.fromRGBO(242,242,242,1)
                ),
              ),
            ),
            child: Row(
              children: [
                new Flexible(
                  child:  TextField(
                    decoration: InputDecoration(
                      hintText: widget.emailid,
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(189,189,189,1),
                          fontSize:14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400),
                      border: InputBorder.none,
                    ),
                  ),),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:20.0,right: 20,top:20),
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    color: Color.fromRGBO(242,242,242,1)
                ),
              ),
            ),
            child: Row(
              children: [
                new Flexible(
                  child:  TextField(
                    decoration: InputDecoration(
                      hintText: widget.vehiclename,
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(189,189,189,1),
                          fontSize:14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400),
                      border: InputBorder.none,
                    ),
                  ),),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:20.0,right: 20,top:20),
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    color: Color.fromRGBO(242,242,242,1)
                ),
              ),
            ),
            child: Row(
              children: [
                new Flexible(
                  child:  TextField(
                    decoration: InputDecoration(
                      hintText: widget.vehicleregisternum,
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(189,189,189,1),
                          fontSize:14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400),
                      border: InputBorder.none,
                    ),
                  ),),
              ],
            ),
          ),
        ),
        Row(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top:60.0,left:23),
                height: 45,
                width: 345,
                child :RaisedButton(
                  child: Text(widget.text,
                    style:TextStyle(color: Color.fromRGBO(255,255,255,1),
                      fontSize: 14,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w800,
                    ) ,),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Otp()));
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(4.0),),
                  color: Color.fromRGBO(0,114,255,1),

                ),
              ),
            ),

          ],
        ),



      ],

    );
  }
}
