import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vehical_maintenance/OTP.dart';
import 'package:vehical_maintenance/viewall.dart';

class IntroCard extends StatefulWidget {
  final String logo, heading, title,mobno,name;

  const IntroCard({Key key, this.logo,this.heading,this.title,this.mobno,this.name})
      : super(key: key);

  @override
  _IntroCardState createState() => _IntroCardState();
}

class _IntroCardState extends State<IntroCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 440,
          width: 500,
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left:20,top:30),
                        child: SvgPicture.asset(widget.logo),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Row(
                    children: [
                      Text(widget.heading, style: TextStyle(
                      color: Color.fromRGBO(33,33,33,1),
                      fontSize: 22,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w800,
                      ),),
                                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:20.0,top:15),
                  child: Row(
                    children: [
                      Text(widget.title,style: TextStyle(
                        color: Color.fromRGBO(79,79,79,1),
                        fontSize: 14,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w600,
                      ),),
                    ],
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
                              hintText: widget.mobno,
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
                          child: Text("Send OTP",
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
            )
        ),

      ],

    );
  }
}
