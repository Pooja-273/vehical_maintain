import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vehical_maintenance/cardetail.dart';
import 'package:vehical_maintenance/viewall.dart';

class Center1Card extends StatefulWidget {
  final String image, title,star,rating,location,area,pickup,managedby,price,subcategories;


  const Center1Card({Key key, this.image,this.title,this.star, this.rating, this.location, this.area, this.pickup, this.managedby,this.price,this.subcategories})
      : super(key: key);
  @override
  _Center1CardState createState() => _Center1CardState();
}

class _Center1CardState extends State<Center1Card> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      //  margin: EdgeInsets.only(bottom:100),
      width: 500,
      height: 200,
      child: Stack(
        children: [
          Stack(
            children: [
              Container(
                alignment: Alignment(-0.9,-0.8),
                child: Image.asset(widget.image),
              ),
              Container(
                alignment: Alignment(-0.15,-0.85),
                child:Text(widget.title,
                  style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                    fontSize: 14,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w700,
                  ) ,
                ),
              ),
              Container(
                alignment: Alignment(0.25,-0.85),
                child:SvgPicture.asset('assets/images/Vector.svg'),

              ),
              Container(
                alignment: Alignment(0.36,-0.85),
                child:SvgPicture.asset('assets/images/flat.svg'),

              ),
              Stack(
                  children:[
                    Padding(
                      padding: const EdgeInsets.only(left:325.0,top:15),
                      child: SvgPicture.asset(widget.star),
                    ),
                    Align(
                      child: Text(widget.rating,
                        style: TextStyle(color: Color.fromRGBO( 33,150,83,1),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w700,
                        ) ,
                      ),
                      alignment: Alignment(0.85,-0.85),
                    ),

                  ]
              ),
              Container(
                alignment: Alignment(-0.36,-0.60),
                child:SvgPicture.asset(widget.location),
              ),
              Container(
                alignment: Alignment(-0.13,-0.61),
                child: Text(widget.area,
                  style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                    fontSize: 14,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w600,
                  ) ,
                ),
              ),
              Container(
                child: Text(widget.pickup,
                  style: TextStyle(color: Color.fromRGBO(189,189,189,1),
                    fontSize: 10,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w400,
                  ) ,
                ),
                alignment:Alignment(-0.20,-0.25),
              ),
              Container(
                child: Text(widget.price,
                  style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                    fontSize: 12,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w600,
                  ) ,
                ),
                alignment:Alignment(-0.31,-0.02),
              ),
              Container(
                child: Text(widget.managedby,
                  style: TextStyle(color: Color.fromRGBO(189,189,189,1),
                    fontSize: 10,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w400,
                  ) ,
                ),
                alignment:Alignment(0.39,-0.25),
              ),
              Container(
                child: Text(widget.subcategories,
                  style: TextStyle(color: Color.fromRGBO(130,130,130,1),
                    fontSize: 12,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w600,
                  ) ,
                ),
                alignment:Alignment(0.56,-0.02),
              ),
            ],
          ),
        ],
      ),
    );

  }
}
