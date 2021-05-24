import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:rating_dialog/rating_dialog.dart';
import 'package:vehical_maintenance/Account.dart';
import 'package:vehical_maintenance/Allorders1.dart';
import 'package:vehical_maintenance/Underprogress-1.dart';
import 'package:vehical_maintenance/Underprogress.dart';


class Allorder extends StatefulWidget {
  @override
  _AllorderState createState() => _AllorderState();
}

class _AllorderState extends State<Allorder> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Stack(
          children:[
            Align(
              alignment:Alignment(-1.1,-0.1),
              child:Text("Orders",
                style: TextStyle(
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                  color: Colors.black,),
              ),
            ),
          ],
        ),
        leading: new IconButton(
          icon: SvgPicture.asset('assets/images/back.svg'),
          onPressed: ()=> Navigator.of(context).pop(),
        ),
        elevation: 1.0,
        backgroundColor: Colors.white,
      ),
      backgroundColor:Color.fromRGBO(246,251,255,1) ,
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: 180,
            child:Column(
              children: <Widget>[
              Container(
                width: 500,
                height: 150,
                child: Stack(
                  children: [
                     FlatButton(
                       onPressed: (){
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder:(context,animation,secondaryAnimation)=>Allorders(),
                                transitionsBuilder:(context, animation, secondaryAnimation, child){
                                  return SlideTransition(
                                    position: Tween<Offset>(
                                      begin: const Offset(-1.0,0.0),
                                      end: Offset.zero,
                                    ).animate(animation),
                                    child: SlideTransition(
                                      position: Tween<Offset>(
                                        begin: Offset.zero,
                                        end: const Offset(-1.0,0.0),
                                      ).animate(secondaryAnimation),
                                      child: child,
                                    ),
                                  );
                                }
                            )
                        );
                      },
                      child: Stack(
                        children: [
                          Container(
                            //height:180,
                            alignment: Alignment(-0.9,-0.25),
                            child:SvgPicture.asset('assets/images/Group177.svg'),
                          ),
                          Container(
                            alignment: Alignment(-0.35,-0.40),
                            child: Text("Maruti Suzuki Ciaz",
                              style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w700,
                              ) ,
                            ),
                          ),
                          Container(
                            alignment: Alignment(-0.38,-0.1),
                            child:Text("OD4583215497666",
                              style: TextStyle(color: Color.fromRGBO(79,79,79,1),
                                fontSize: 12,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w400,
                              ) ,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:300,top:40),
                            child: Container(
                              height: 50,
                              //color: Colors.blue,
                              child: Text('17/02/2021',
                                style: TextStyle(color: Color.fromRGBO(79,79,79,1),
                                  fontSize: 12,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w400,
                                ) ,
                              ),
                            ),
                          ),
                        ],
                      ),

                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => underProgress()));
                      },
                      child: Stack(
                        children: [
                          Container(
                            alignment: Alignment(-0.77,0.7),
                            child:SvgPicture.asset('assets/images/file.svg'),
                          ),
                          Container(
                            alignment: Alignment(-0.55,0.75),
                            child: Text("View Order",
                              style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w700,
                              ) ,
                            ),
                          ),
                        ],
                      )
                    ),
                        Container(
                          alignment: Alignment(-0.0,0.8),
                          child:SvgPicture.asset('assets/images/Line.svg'),
                    ),

                    GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => Progres()));
                        },
                      child:Stack(
                        children: [
                          Container(
                            alignment: Alignment(0.25,0.75),
                            child:SvgPicture.asset('assets/images/Group144.svg'),
                          ),
                          Container(
                            alignment: Alignment(0.80,0.75),
                            child: Text("View Updates",
                              style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w700,
                              ) ,
                            ),
                          ),
                        ],
                      )

                    ),

                  ],
                ),
              ),
            ],
            ),
          ),

          SizedBox(height:15),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.white.withOpacity(0.3),
                      blurRadius: 5,
                      offset: Offset(0, 2)
                  )
                ]
            ),
            child: Container(
              width: 500,
              height: 193,
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment(-0.30,-0.35),
                    child:Text("OD4583215497666",
                      style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                        fontSize: 12,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w600,
                      ) ,
                    ),
                  ),
                  Container(
                    alignment: Alignment(-0.8,-0.45),
                    child:SvgPicture.asset('assets/images/bike.svg'),
                    ),
                    Container(
                      alignment: Alignment(-0.2,-0.60),
                      child: Text("Honda Activa 6G BSVI",
                        style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w700,
                        ) ,
                      ),
                    ),

                  Padding(
                    padding: const EdgeInsets.only(left:300,top:33),
                    child: Container(
                            child: Text('17/02/2021',
                              style: TextStyle(color: Color.fromRGBO(79,79,79,1),
                                fontSize: 12,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w400,
                              ) ,
                            ),
                    ),
                  ),

                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => underProgress()));
                      },
                      child: Stack(
                        children: [
                          Container(
                            alignment: Alignment(-0.75,0.3),
                            child:SvgPicture.asset('assets/images/file.svg'),
                          ),
                          Container(
                            alignment: Alignment(-0.53,0.33),
                            child: Text("View Order",
                              style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w700,
                              ) ,
                            ),
                          ),
                        ],
                      )
                  ),

                  Container(
                        alignment: Alignment(-0.0,0.4),
                        child:SvgPicture.asset('assets/images/Line.svg'),
                  ),
                  Container(
                        alignment: Alignment(0.25,0.35),
                        child:SvgPicture.asset('assets/images/Star.svg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:257.0,top:104),
                    child: FlatButton(
                        child: Text("Rate Order",
                          style: TextStyle(color: Color.fromRGBO(51,51,51,1),
                            fontSize: 14,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w700,
                          ) ,
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) => _buildPopDialog(context),
                          );
                        }
                        ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height:15),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.white.withOpacity(0.3),
                      blurRadius: 5,
                      offset: Offset(0, 2)
                  )
                ]
            ),
            child: Container(
              width: 500,
              height: 187,
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment(-0.30,-0.35),
                    child:Text("OD4583215497666",
                      style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                        fontSize: 12,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w600,
                      ) ,
                    ),
                  ),
                  Container(
                    alignment: Alignment(-0.8,-0.48),
                        child:SvgPicture.asset('assets/images/Scooter.svg'),
                  ),
                    Container(
                      alignment: Alignment(-0.2,-0.60),
                      child: Text("Honda Activa 6G BSVI",
                        style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w700,
                        ) ,
                      ),
                    ),

                  Padding(
                    padding: const EdgeInsets.only(left:300,top:33),
                    child: Container(
                            child: Text('17/02/2021',
                              style: TextStyle(color: Color.fromRGBO(79,79,79,1),
                                fontSize: 12,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w400,
                              ) ,
                            ),

                    ),
                  ),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => underProgress()));
                      },
                      child: Stack(
                        children: [
                          Container(
                            alignment: Alignment(-0.77,0.4),
                            child:SvgPicture.asset('assets/images/file.svg'),
                          ),
                          Container(
                            alignment: Alignment(-0.55,0.4),
                            child: Text("View Order",
                              style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w700,
                              ) ,
                            ),
                          ),
                        ],
                      )
                  ),
                  Container(
                        alignment: Alignment(-0.0,0.4),
                        child:SvgPicture.asset('assets/images/line.svg'),
                  ),
                  Container(
                    height:80,
                    child:Text("Your Rating",
                       style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                        fontSize: 14,
                         fontFamily: 'Mulish',
                         fontWeight: FontWeight.w600,
                       ) ,
                     ),
                     alignment: Alignment(0.43,2.8),
                  ),
            Container(
              height:80,
                   alignment: Alignment(0.66,2.6),
                   child:SvgPicture.asset('assets/images/star.svg'),
            ),
               Container(
                 alignment: Alignment(0.78,0.4),
                 child: Text("4.5",
                  style: TextStyle(color: Color.fromRGBO( 33,150,83,1),
                    fontSize: 14,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w700,
                  ) ,
                ),
              ),


                ],
              ),
            ),
          ),
        ],
      ),
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
      //               child: SvgPicture.asset('assets/images/Group175.svg')),
      //           label: 'Vehicles',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: SvgPicture.asset('assets/images/account.svg'),
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


Widget _buildPopDialog(BuildContext context) {
  double rating = 4.0;

  return Dialog(
    backgroundColor: Colors.transparent,
    insetPadding: EdgeInsets.all(10),
    child: Stack(
      overflow: Overflow.visible,
      //alignment: Alignment.center,
      children: <Widget>[
        Container(
          width: 345,
          height: 460,
          decoration: BoxDecoration(borderRadius: BorderRadius.only(
              topRight:Radius.circular(15),topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
              color: Colors.white),
          child: Column(
            children: <Widget>[
                    Container(
                      width: 500,
                      height: 350,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                alignment: Alignment(-0.81,-0.85),
                                image: AssetImage('assets/images/honda.png',
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // height: 700,
                            alignment: Alignment(-0.15,-0.80),
                            child: Text("Universal Honda",
                              style: TextStyle(
                                color: Color.fromRGBO(33, 33, 33, 1),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment(0.33,-0.80),
                            child: SvgPicture.asset('assets/images/Orange.svg'),
                          ),
                          Container(
                            alignment: Alignment(0.45,-0.80),
                            child: SvgPicture.asset('assets/images/flat.svg'),
                          ),
                          Container(
                            //height:80,
                            alignment: Alignment(-0.40,-0.67),
                            child: SvgPicture.asset('assets/images/location.svg'),
                          ),
                          Container(
                            alignment: Alignment(-0.25,-0.68),
                            child: Text("Paldi",
                              style: TextStyle(
                                color: Color.fromRGBO(130, 130, 130, 1),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment(-0.61,-0.35),
                            child: Text("How was your experience?",
                              style: TextStyle(color: Color.fromRGBO(0,0,0,1),
                                fontSize: 16,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w700,
                              ) ,
                            ),
                          ),
                          Container(
                            alignment: Alignment(-0.23,-0.13),
                            child: Text("Rate your experience with Universal Honda, Paldi.\nLeaving a Review is optional.",
                              style: TextStyle(color: Color.fromRGBO(79, 79, 79, 1),
                                fontSize: 12,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w400,
                              ) ,
                            ),
                          ),
                          // Container(
                          //   alignment: Alignment(-0.81,0.23),
                          //   child: Text("VERY GOOD",
                          //     style: TextStyle(color: Color.fromRGBO(39, 174, 96, 1),
                          //       fontSize: 12,
                          //       fontFamily: 'Mulish',
                          //       fontWeight: FontWeight.w700,
                          //     ) ,
                          //   ),
                          // ),
                          Container(
                            alignment: Alignment(-0.70,0.47),
                              child: SmoothStarRating(
                                color: Color.fromRGBO(39, 174, 96, 1),
                                rating: rating,
                                size: 33,
                                filledIconData: Icons.star_rounded,
                                halfFilledIconData: Icons.star_half_rounded,
                                defaultIconData: Icons.star_border_rounded,
                                borderColor: Color.fromRGBO(182, 205, 220, 1),
                                starCount: 5,
                                allowHalfRating: true,
                                spacing: 10.0,
                                onRated: (value) {
                                  setState(() {
                                    rating = value;
                                    print(rating);
                                  });
                                },
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.only(top:280.0,left: 23,right:20),
                            child: Container(
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        color: Color.fromRGBO(242,242,242,1)
                                    ),
                                  ),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Review about your experience",
                                      hintStyle: TextStyle(
                                          color: Color.fromRGBO(189, 189, 189, 1),
                                          fontSize:14,
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.w400),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 40,
                  width: 183.33,
                  child :RaisedButton(
                    child: Text("Submit Rating",
                      style:TextStyle(color: Color.fromRGBO(255,255,255,1),
                        fontSize: 14,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w800,
                      ) ,),
                    //elevation: 6.0,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Allorder()));
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
            ],
          ),

  );
}

void setState(Null Function() param0) {
}
