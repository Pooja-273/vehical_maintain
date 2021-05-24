import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ImageCard extends StatefulWidget {
  final String image;

  const ImageCard({Key key, this.image})
      : super(key: key);

  @override
  _ImageCardState createState() => _ImageCardState();
}

class _ImageCardState extends State<ImageCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            // height:435,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all( 8.0),
                  child: Image.asset(widget.image,fit: BoxFit.contain,height: 160,),
                ),



              ],
            ),


          ),
        ],
      ),
    );
  }
}
