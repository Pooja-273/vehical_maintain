import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vehical_maintenance/OTP.dart';
import 'package:vehical_maintenance/viewall.dart';

class OtpCard extends StatefulWidget {
  final String heading, title,number,text;

  const OtpCard({Key key,this.heading,this.title,this.number,this.text})
      : super(key: key);

  @override
  _OtpCardState createState() => _OtpCardState();
}

class _OtpCardState extends State<OtpCard> {
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
                              color: Color.fromRGBO(33,33,33,1),
                              fontSize: 22,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w800,
                            ))

                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:100.0,top:20),
                  child: Text.rich(
                    TextSpan(
                      children:[
                        TextSpan(text:'Please enter the OTP sent to the mobile \nnumber ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            )),
                        TextSpan(text: '9033273966',
                            style: TextStyle(
                              color: Color.fromRGBO(0,114,255,1),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w800,
                            )),
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
                              hintText: widget.number,
                              hintStyle: TextStyle(
                                  letterSpacing: 2.0,
                                  color: Color.fromRGBO(51,51,51,1),
                                  fontSize:18,
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
