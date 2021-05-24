import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vehical_maintenance/Intro.dart';
import 'package:vehical_maintenance/Introduction.dart';
import 'package:vehical_maintenance/viewall.dart';

class LoginCard extends StatefulWidget {
  final String image, name;

  const LoginCard({Key key, this.image, this.name})
      : super(key: key);

  @override
  _LoginCardState createState() => _LoginCardState();
}

class _LoginCardState extends State<LoginCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            //margin: EdgeInsets.only(top:90.0),
            height: 45,
            width: 345,
            child :RaisedButton(
              child: Text(widget.name,
                style:TextStyle(color: Color.fromRGBO(255,255,255,1),
                  fontSize: 14,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w800,
                ) ,),
              //elevation: 6.0,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Intro()));
              },
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(5.0),),
              color: Color.fromRGBO(0,114,255,1),

            ),
          ),
        ),

      ],

    );
  }
}
