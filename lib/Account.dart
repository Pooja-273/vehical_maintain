import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vehical_maintenance/Add%20vehicle.dart';
import 'package:vehical_maintenance/All%20orders.dart';
import 'package:vehical_maintenance/Help%20&%20Support.dart';
import 'package:vehical_maintenance/Loginpage.dart';
import 'package:vehical_maintenance/PersonalDetail.dart';
import 'package:vehical_maintenance/Refer%20and%20Earn.dart';
import 'package:vehical_maintenance/mydetails.dart';
import 'package:vehical_maintenance/vehicle.dart';
import 'package:vehical_maintenance/viewall.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Align(
              alignment: Alignment(-1.2,-0.1),
              child: Text(
                "Account",
                style: TextStyle(color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w800,),
              ),
            ),

        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: new IconButton(
          icon: SvgPicture.asset('assets/images/back.svg'),
          onPressed: ()=> Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: Color.fromRGBO(246, 251, 255,1),
      body: SingleChildScrollView(
        child: Column(
            children: <Widget>[
              Container(
                color: Colors.white,
                height: 80,
                width: 500,
                child:Column(children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white.withOpacity(0.3),
                            blurRadius: 5,
                            offset: Offset(0, 2)
                        ),
                      ],
                    ),
                    child: Container(
                      height: 80,
                      child: Stack(
                        children: [
                          Container(
                            alignment: Alignment(-0.86,0.2),
                            child: SvgPicture.asset('assets/images/Vectorr.svg'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:50.0,top: 23),
                            child: FlatButton(
                              padding: EdgeInsets.only(left:15.0),
                              child: Text("My Details",
                                style:TextStyle(
                                    color: Color.fromRGBO(33,33,33,1),
                                    fontSize:14,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w600),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Details()));
                              },
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                color: Colors.white,
                height: 80,
                width: 500,
                child:Column(children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white.withOpacity(0.3),
                            blurRadius: 5,
                            offset: Offset(0, 2)
                        ),
                      ],
                    ),
                    child: Container(
                      height: 80,
                      child: Stack(
                        children: [
                          Container(
                            alignment: Alignment(-0.86,0.2),
                            child: SvgPicture.asset('assets/images/vehicles.svg'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:50.0,top: 23),
                            child: FlatButton(
                              padding: EdgeInsets.only(left:15.0),
                              child: Text("My Vehicles",
                                style:TextStyle(
                                    color: Color.fromRGBO(33,33,33,1),
                                    fontSize:14,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w600),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => addvehicle()));
                              },
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                color: Colors.white,
                height: 80,
                width: 500,
                child:Column(children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white.withOpacity(0.3),
                            blurRadius: 5,
                            offset: Offset(0, 2)
                        ),
                      ],
                    ),
                    child: Container(
                      height: 80,
                      child: Stack(
                        children: [
                          Container(
                            alignment: Alignment(-0.86,0.2),
                            child: SvgPicture.asset('assets/images/2.svg'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:50.0,top: 23),
                            child: FlatButton(
                              padding: EdgeInsets.only(left:15.0),
                              child: Text("Refer & Earn",
                                style:TextStyle(
                                    color: Color.fromRGBO(33,33,33,1),
                                    fontSize:14,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w600),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Refer()));
                              },
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                color: Colors.white,
                height: 80,
                width: 500,
                child:Column(children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white.withOpacity(0.3),
                            blurRadius: 5,
                            offset: Offset(0, 2)
                        ),
                      ],
                    ),
                    child: Container(
                      height: 80,
                      child: Stack(
                        children: [
                          Container(
                            alignment: Alignment(-0.86,0.2),
                            child: SvgPicture.asset('assets/images/filee.svg'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:50.0,top: 23),
                            child: FlatButton(
                              padding: EdgeInsets.only(left:15.0),
                              child: Text("All Orders",
                                style:TextStyle(
                                    color: Color.fromRGBO(33,33,33,1),
                                    fontSize:14,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w600),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Allorder()));
                              },
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                color: Colors.white,
                height: 80,
                width: 500,
                child:Column(children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white.withOpacity(0.3),
                            blurRadius: 5,
                            offset: Offset(0, 2)
                        ),
                      ],
                    ),
                    child: Container(
                      height: 80,
                      child: Stack(
                        children: [
                          Container(
                            alignment: Alignment(-0.86,0.2),
                            child: SvgPicture.asset('assets/images/1.svg'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:50.0,top: 23),
                            child: FlatButton(
                              padding: EdgeInsets.only(left:15.0),
                              child: Text("Help & Support",
                                style:TextStyle(
                                    color: Color.fromRGBO(33,33,33,1),
                                    fontSize:14,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w600),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Help()));
                              },
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                color: Colors.white,
                height: 80,
                width: 500,
                child:Column(children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white.withOpacity(0.3),
                            blurRadius: 5,
                            offset: Offset(0, 2)
                        ),
                      ],
                    ),
                    child: Container(
                      height: 80,
                      child: Stack(
                        children: [
                          Container(
                            alignment: Alignment(-0.86,0.2),
                            child: SvgPicture.asset('assets/images/logout.svg'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:50.0,top: 23),
                            child: FlatButton(
                              padding: EdgeInsets.only(left:15.0),
                              child: Text("Log Out",
                                style:TextStyle(
                                    color: Color.fromRGBO(235,87,87,1),
                                    fontSize:14,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w600),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Login()));
                              },
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                ],
                ),
              ),
              SizedBox(height: 90),
              Container(
                child:SvgPicture.asset('assets/images/Layer3.svg'),
              ),
              Container(
                height: 30,
                // color: Colors.blue,
                alignment: Alignment(0.01,0.80),
                child: Text('Servicko v2.2.4',
                    style: TextStyle(
                      fontSize:15,
                      color:Color.fromRGBO(214,228,247,1),)),
              ),

            ]
        ),
      ),

      //
      // bottomNavigationBar: Container(
      //   decoration: BoxDecoration(
      //       color: Colors.grey,
      //       boxShadow: [
      //         BoxShadow(
      //             color: Colors.grey
      //         )
      //       ]
      //   ),
      //   child: SizedBox(
      //     height: 65,
      //     child: BottomNavigationBar(
      //       backgroundColor: Color.fromRGBO(255,255,255,1),
      //       type: BottomNavigationBarType.fixed,
      //       items: <BottomNavigationBarItem>[
      //         BottomNavigationBarItem(
      //           icon: SvgPicture.asset('assets/images/seting.svg'),
      //           label: 'Service',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: SvgPicture.asset('assets/images/sos1.svg'),
      //           label: 'Emergency',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: Container(
      //               height: 25,
      //               child: SvgPicture.asset('assets/images/Frame1.svg')),
      //           label: 'Vehicles',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: SvgPicture.asset('assets/images/Vectorr.svg'),
      //           label: 'Account',
      //         ),
      //
      //       ],
      //       currentIndex: _selectedIndex,
      //       selectedItemColor: Colors.blue[800],
      //       onTap: _onItemTapped,
      //       elevation: 4,
      //
      //     ),
      //   ),
      // ),
    );
  }
}
