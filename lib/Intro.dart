import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'package:vehical_maintenance/Container/Center1Card.dart';
import 'package:vehical_maintenance/Container/CenterCard.dart';
import 'package:vehical_maintenance/Container/IntroCard.dart';
import 'package:vehical_maintenance/Container/ServiceCenterCard.dart';
import 'package:vehical_maintenance/Container/ViewCard.dart';
import 'package:vehical_maintenance/OTP.dart';
import 'package:vehical_maintenance/PersonalDetails.dart';
import 'package:vehical_maintenance/cardetail.dart';
import 'package:vehical_maintenance/model/CarModel.dart';
import 'package:vehical_maintenance/model/Center1Model.dart';
import 'package:vehical_maintenance/model/CenterModel.dart';
import 'package:vehical_maintenance/model/IntroModel.dart';
import 'package:vehical_maintenance/model/ServiceCenterModel.dart';
import 'package:vehical_maintenance/model/ViewModel.dart';

Future<IntroModel> createUser(BuildContext context,String number) async {

  print("number : "+ number);
  final http.Response response = await http.post(
    '',
    headers: <String, String>{

    },
    body: {
      'number': number,

    },
  ).then((response) {
    if(response.statusCode == 200){
      // final body = json.decode(response.body);
      // if(body.flag == 1){
      //   Navigator.push(context, MaterialPageRoute(
      //       builder: (context) => Otp()));
      // }
      // else if(body.flag == 0)
      //   {
      //     Toats(body.message);
      //   }
      // prefs.setString('number',response.body);
       Navigator.push(context, MaterialPageRoute(
          builder: (context) => PersonalDetails()));
    }
    print(response.statusCode);
    print(response.body);


  });
}


class Intro extends StatefulWidget {

  @override
  _IntroState createState() => _IntroState();
}
class _IntroState extends State<Intro> {

  @override
  final List<IntroModel>introlist =[
    IntroModel("assets/images/black.svg", "Welcome to Servicko.","Let's log ou in.We'll create a new account if you\ndon't have one.", "Enter Mobile Number", "Send OTP")
  ];

  
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
      backgroundColor: Color.fromRGBO(246,251,255,1),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height:440 ,
              width: 500,
              //margin: const EdgeInsets.only(bottom:10.0,top: 0.0),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: introlist.length,
                itemBuilder: (BuildContext contex,int  index)=>
                    IntroCard(logo: introlist[index].logo,
                      heading: introlist[index].heading,
                      title: introlist[index].title,
                      mobno:  introlist[index].mobno,
                      name: introlist[index].name,
                    ),
              ),
            ),
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
                    alignment: Alignment(-0.3,-0.95),
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
                      alignment: Alignment(0.2,-0.95),
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
      ),
    );
  }
}
