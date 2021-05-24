import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ViewCard extends StatefulWidget {
  final String image,name;

  const ViewCard({Key key, this.image,this.name})
      : super(key: key);

  @override
  _ViewCardState createState() => _ViewCardState();
}

class _ViewCardState extends State<ViewCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
             Container(
              width: 140,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                       padding: const EdgeInsets.only(top:3.0),
                       child: SvgPicture.asset(widget.image),
                     ),
                  Padding(
                      padding: const EdgeInsets.only(right:13.0,top:5),
                      child: Text(widget.name,style: TextStyle(color: Color.fromRGBO(33,33,33,1),
                          fontSize: 12,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w700,
                        ),),
                    ),


                ],
              ),
            ),
        ],
      ),
    );
  }
}
