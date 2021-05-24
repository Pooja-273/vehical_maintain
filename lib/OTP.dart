import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vehical_maintenance/Container/Center1Card.dart';
import 'package:vehical_maintenance/Container/CenterCard.dart';
import 'package:vehical_maintenance/Container/IntroCard.dart';
import 'package:vehical_maintenance/Container/OtpCard.dart';
import 'package:vehical_maintenance/Container/ServiceCenterCard.dart';
import 'package:vehical_maintenance/Container/ViewCard.dart';
import 'package:vehical_maintenance/cardetail.dart';
import 'package:vehical_maintenance/model/CarModel.dart';
import 'package:vehical_maintenance/model/Center1Model.dart';
import 'package:vehical_maintenance/model/CenterModel.dart';
import 'package:vehical_maintenance/model/IntroModel.dart';
import 'package:vehical_maintenance/model/OtpModel.dart';
import 'package:vehical_maintenance/model/ServiceCenterModel.dart';
import 'package:vehical_maintenance/model/ViewModel.dart';


class Otp extends StatefulWidget {

  @override
  _OtpState createState() => _OtpState();
}
class _OtpState extends State<Otp> {

  @override
  final List<OtpModel>otplist =[
    OtpModel("Enter OTP","Please enter the OTP sent to the mobile\n number ", "1  2  3  4 ", "Submit")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title:
            Align(
              alignment: Alignment(-1.2,-0.1),
              child: Text(
                "Back",
                style: TextStyle(color: Color.fromRGBO(79,79,79,1),
                  fontSize: 14,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w600,),
              ),
            ),
        backgroundColor: Colors.white,
        elevation: 0.6,
        leading: new IconButton(
          icon: SvgPicture.asset('assets/images/back.svg'),
          onPressed: ()=> Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: Color.fromRGBO(246,251,255,1),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height:375 ,
              width: 500,
              //margin: const EdgeInsets.only(bottom:10.0,top: 0.0),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: otplist.length,
                itemBuilder: (BuildContext contex,int  index)=>
                    OtpCard(heading: otplist[index].heading,
                      title: otplist[index].title,
                      number:  otplist[index].number,
                      text: otplist[index].text,
                    ),
              ),
            ),





          ],

        ),
      ),
    );
  }
}
