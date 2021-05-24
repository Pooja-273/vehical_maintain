import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vehical_maintenance/Container/Center1Card.dart';
import 'package:vehical_maintenance/Container/CenterCard.dart';
import 'package:vehical_maintenance/Container/LoginCard.dart';
import 'package:vehical_maintenance/Container/ServiceCenterCard.dart';
import 'package:vehical_maintenance/Container/ViewCard.dart';
import 'package:vehical_maintenance/cardetail.dart';
import 'package:vehical_maintenance/model/CarModel.dart';
import 'package:vehical_maintenance/model/Center1Model.dart';
import 'package:vehical_maintenance/model/CenterModel.dart';
import 'package:vehical_maintenance/model/LoginModel.dart';
import 'package:vehical_maintenance/model/ServiceCenterModel.dart';
import 'package:vehical_maintenance/model/ViewModel.dart';

//Future<Login>createUser(BuildContext context,String username,String password) async{

//}

class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}
class _LoginState extends State<Login> {

  @override
  final List<LoginModel>loginlist =[
    LoginModel("Login in Now"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246,251,255,1),
      body: Container(
        height:870,
        width: 500,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 105),
                  Align(
                    alignment: Alignment(0.04,0.2),
                    child:SvgPicture.asset('assets/images/black.svg'),
                  ),
                  SizedBox(height:25),
                  Container(
                    height: 33,
                    alignment: Alignment(0.25,3.1),
                    child:Text("The Only Vehicle Maintenance",
                      style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                        fontSize: 22,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w800,
                      ) ,
                    ),
                  ),
                  Container(
                    height: 29,
                    alignment: Alignment(0.2,3.20),
                    child:Text("App You'll Ever Need.",
                      style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                        fontSize: 22,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w800,
                      ) ,
                    ),
                  ),

                ],
              ),
            ),
            // SizedBox(height:50,),
            Container(
              width: 550,
              height: 140,
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment(-0.5,-0.18),
                    child:SvgPicture.asset('assets/images/Right.svg'),
                  ),
                  Container(
                    alignment: Alignment(-0.70,0.65),
                    child:Text("Company Authorised",
                      style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                        fontSize: 14,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w600,
                      ) ,
                    ),
                  ),
                  Center(
                    child: Container(
                      alignment: Alignment(-0.59,0.98),
                      child:Text("Service Centers",
                        style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                          fontSize: 13,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment(0.6,-0.17),
                    child:SvgPicture.asset('assets/images/flat5.svg'),
                  ),
                  Container(
                    alignment: Alignment(0.80,0.65),
                    child:Text("Local Multi-Brand",
                      style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                        fontSize: 14,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w600,
                      ) ,
                    ),
                  ),
                  Container(
                    alignment: Alignment(0.70,0.98),
                    child:Text("Workshops",
                      style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                        fontSize: 13,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w600,
                      ) ,
                    ),
                  ),
                  Container(
                    alignment: Alignment(-0.5,2.8),
                    child:SvgPicture.asset('assets/images/distance2.svg'),
                  ),
                  Container(
                    alignment: Alignment(-0.60,3.1),
                    child:Text("Live Location &",
                      style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                        fontSize: 14,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w600,
                      ) ,
                    ),
                  ),
                  Center(
                    child: Container(
                      alignment: Alignment(-0.61,3.35),
                      child:Text("Progress Updates",
                        style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                          fontSize: 13,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),
                    ),
                  ), Container(
                    alignment: Alignment(-0.60,3.1),
                    child:Text("Live Location &",
                      style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                        fontSize: 14,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w600,
                      ) ,
                    ),
                  ),
                  Center(
                    child: Container(
                      alignment: Alignment(-0.61,3.35),
                      child:Text("Progress Updates",
                        style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                          fontSize: 13,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment(0.6,2.9),
                    child:SvgPicture.asset('assets/images/Group88.svg'),
                  ),
                  Container(
                    alignment: Alignment(0.68,3.10),
                    child:Text("Puncture &",
                      style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                        fontSize: 14,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w600,
                      ) ,
                    ),
                  ),
                  Container(
                    alignment: Alignment(0.75,3.33),
                    child:Text("Breakdown Help",
                      style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                        fontSize: 13,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w600,
                      ) ,
                    ),
                  ),
                  // SizedBox(height: 0),

                ],
              ),
            ),
            SizedBox(height: 200,),
            Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height:100,
                  width: 500,
                  //margin: const EdgeInsets.only(bottom:10.0,top: 0.0),
                  padding:EdgeInsets.only(left: 25.0,top: 20) ,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: loginlist.length,
                    itemBuilder: (BuildContext contex,int  index)=>
                        LoginCard(name: loginlist[index].name,
                        ),
                  ),
                ),





              ],

            ),
          ],

        ),

      ),

    );
  }
}
