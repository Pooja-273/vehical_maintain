import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vehical_maintenance/cardetail.dart';
import 'package:vehical_maintenance/viewall.dart';

class CarDetailCard extends StatefulWidget {
  final String image, title,star,rating,location,area,pickup,managedby,price,subcategories;

  const CarDetailCard({Key key, this.image,this.title,this.star, this.rating, this.location, this.area, this.pickup, this.managedby,this.price,this.subcategories})
      : super(key: key);
  @override
  _CarDetailCardState createState() => _CarDetailCardState();
}

class _CarDetailCardState extends State<CarDetailCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 200,
      child: Stack(
        children: [
          Container(
                alignment: Alignment(-0.9,-0.60),
                child: Image.asset(widget.image),
              ),
          Container(
            alignment: Alignment(-0.20,-0.6),
            child: Text("Universal Honda",
              style: TextStyle(
                color: Color.fromRGBO(33, 33, 33, 1),
                fontSize: 16,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            alignment: Alignment(0.27,-0.60),
            child: SvgPicture.asset('assets/images/Vector.svg'),
          ),
          Container(
            alignment: Alignment(0.38, -0.60),
            child: SvgPicture.asset('assets/images/flat.svg'),
          ),
          Container(
            alignment: Alignment(-0.43,-0.18),
            child: SvgPicture.asset('assets/images/location.svg'),

          ),
          Container(
            alignment: Alignment(-0.29,-0.18),
            child: Text("Paldi",
              style: TextStyle(
                color: Color.fromRGBO(130, 130, 130, 1),
                fontSize: 14,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:80.0),
            child: Container(
              height:60,
              width:90,
              // color:Colors.blue,
              child: Stack(
                  children:[
                    IconButton(
                      alignment: Alignment(0.80,0.15),
                      //padding: EdgeInsets.only(right:15.0,top:18),
                      icon:SvgPicture.asset('assets/images/star.svg'),
                      onPressed: (){
                        // showDialog(
                        //   context: context,
                        //   builder: (BuildContext context) => _buildPopupDialog(context),
                        // );
                      },
                    ),
                    Container(
                      child: Text("4.5",
                        style: TextStyle(color: Color.fromRGBO( 33,150,83,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w700,
                        ) ,
                      ),
                      alignment: Alignment(0.20,-0.1),
                    ),
                    Container(
                      child: Text("323 Reviews",
                        style: TextStyle(
                          color: Color.fromRGBO(130, 130, 130, 1),
                          fontSize: 11,
                          decoration: TextDecoration.underline,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      alignment: Alignment(0.90,0.70),
                    ),
                  ]
              ),
            ),
          ),

          Container(
            child: Text("Pick up & Drop Off",
              style: TextStyle(
                color: Color.fromRGBO(130, 130, 130, 1),
                fontSize: 10,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w400,
              ),
            ),
            alignment: Alignment(-0.07,0.6),
          ),
          Container(
            child: Text("₹149",
              style: TextStyle(
                color: Color.fromRGBO(79, 79, 79, 1),
                fontSize: 12,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w600,
              ),
            ),
            alignment: Alignment(-0.20,0.88),
          ),
          Container(
            child: Text("Managed By",
              style: TextStyle(
                color: Color.fromRGBO(130, 130, 130, 1),
                fontSize: 10,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w400,
              ),
            ),
            alignment: Alignment(0.68,0.6),
          ),
          Container(
            child: Text("Universal Honda",
              style: TextStyle(
                color: Color.fromRGBO(79, 79, 79, 1),
                fontSize: 12,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w600,
              ),
            ),
            alignment: Alignment(0.88, 0.88),
          ),
        ],
      ),
    );

  }
}
