import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vehical_maintenance/OTP.dart';

class Introduction extends StatefulWidget {
  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Stack(
          children: [
            Align(
              alignment: Alignment(-1.2,-0.1),
              child: Text(
                "Back to Intro",
                style: TextStyle(color: Color.fromRGBO(79,79,79,1),
                  fontSize: 14,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w600,),
              ),
            )
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 1.0,
        leading: new IconButton(
          icon: SvgPicture.asset('assets/images/back.svg'),
          onPressed: ()=> Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: Color.fromRGBO(246, 251, 255,1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: 440,
              child:Column(children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 10,),
                      Container(
                        alignment: Alignment(-0.95,1.90),
                        child:SvgPicture.asset('assets/images/black.svg'),
                      ),
                      Container(
                        height: 78,
                        alignment: Alignment(-0.9,0.50),
                        child: Text("Welcome to Servicko.", style: TextStyle(
                          color: Color.fromRGBO(33,33,33,1),
                          fontSize: 22,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w800,
                        )
                        ),
                      ),
                      Container(
                        height: 50,
                        alignment: Alignment(-0.5,-0.99),
                        child: Text("Let's log ou in.We'll create a new account if you\ndon't have one.",
                          style: TextStyle(
                            color: Color.fromRGBO(79,79,79,1),
                            fontSize: 14,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w600,
                          ),),

                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    //padding: EdgeInsets.only(left:5.0,top:4),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            color: Color.fromRGBO(242,242,242,1)
                        ),
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Mobile Number",
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(189,189,189,1),
                              fontSize:14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w400),
                          border: InputBorder.none
                      ),
                    ),
                  ),
                ),
                SizedBox(height:30,),
                Center(
                  child: Container(
                    //margin: EdgeInsets.only(top:90.0),
                    height: 45,
                    width: 345,
                    child :RaisedButton(
                      child: Text("Send OTP",
                        style:TextStyle(color: Color.fromRGBO(255,255,255,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w800,
                        ) ,),
                      //elevation: 6.0,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => Otp()));
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0),),
                      color: Color.fromRGBO(0,114,255,1),

                    ),
                  ),
                ),

              ],
              ),
            ),
            // Container(
            //   height: 240,
            //   alignment: Alignment(-0.5,-0.5),
            //   child:SvgPicture.asset('assets/images/shield.svg'),
            // ),
            SizedBox(height:52),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child:SvgPicture.asset('assets/images/shield.svg'),
                ),
                Expanded(
                  child:SvgPicture.asset('assets/images/flat1.svg'),
                ),
                Expanded(
                  child:SvgPicture.asset('assets/images/Group184.svg'),
                ),
                Expanded(
                  child:SvgPicture.asset('assets/images/distance1.svg'),
                ),
              ],
            ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 90,
                        alignment: Alignment(0.8,-0.95),
                        child:Text("    Authorised\nService Centers",
                          style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                            fontSize: 10,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w600,
                          ) ,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          alignment: Alignment(0.4,-0.95),
                          child:Text("Multi-Brand\n Workshops",
                            style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                              fontSize: 10,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ) ,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          alignment: Alignment(0.3,-0.95),
                          child:Text("Emergency\n     Help",
                            style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                              fontSize: 10,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ) ,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          alignment: Alignment(0.4,-0.95),
                          child:Text("Live Progress\n    Updates",
                            style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                              fontSize: 10,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ) ,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            ),

            // Center(
            //   child: Container(
            //     margin: EdgeInsets.only(top:60.0),
            //     height: 45,
            //     width: 183.33,
            //     child :RaisedButton(
            //       child: Text("Add New Vehicle",
            //         style:TextStyle(color: Color.fromRGBO(255,255,255,1),
            //           fontSize: 14,
            //           fontFamily: 'Mulish',
            //           fontWeight: FontWeight.w800,
            //         ) ,),
            //       //elevation: 6.0,
            //       onPressed: (){
            //         // Navigator.push(context, MaterialPageRoute(
            //         //     builder: (context) => ()));
            //       },
            //       shape: RoundedRectangleBorder(
            //         borderRadius: new BorderRadius.circular(5.0),),
            //       color: Color.fromRGBO(0,114,255,1),
            //
            //     ),
            //   ),
            // ),

        ),

    );
  }
}
