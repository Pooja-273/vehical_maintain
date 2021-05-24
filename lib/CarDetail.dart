import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vehical_maintenance/Container/CarDetailCard.dart';
import 'package:vehical_maintenance/Container/ServiceCenterCard.dart';
import 'package:vehical_maintenance/model/CarDetailModel.dart';
import 'package:vehical_maintenance/model/ServiceCenterModel.dart';

class cardetail extends StatelessWidget {
 // const cardetail({Key key}) : super(key: key);
  final List<CarDetailModel>cardetaillist = [
    CarDetailModel("assets/images/honda.png", "Universal Honda", "assets/images/star.svg", "4.5", "assets/images/location.svg", "Paldi", "Pick up & Drop Off", "Managed By", "₹149", "Universal Honda"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title:
        Align(
          alignment:Alignment(1.07,-0.1),
          child:SvgPicture.asset('assets/images/Group75.svg'),
        ),
        actions: <Widget>[
          new Container(
            child: Stack(
                children:[
                  Align(
                    child: Text('Ciaz',
                      style: new TextStyle(
                        //height:2.6,
                        fontSize: 14,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w800,
                        color: Color.fromRGBO(33,33,33,1),
                      ),
                    ),
                  ),
                ]
            ),
            padding: EdgeInsets.only(left:0.0,right:19.0),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0.0,
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
              height:150 ,
              width: 500,
              margin: const EdgeInsets.only(bottom:10.0,top: 0.0),
              padding:EdgeInsets.only(left: 25.0,top: 10) ,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: cardetaillist.length,
                itemBuilder: (BuildContext contex,int  index)=>
                    CarDetailCard(image: cardetaillist[index].image,
                      title: cardetaillist[index].title,
                      star: cardetaillist[index].star,
                      rating: cardetaillist[index].rating,
                      location: cardetaillist[index].location,
                      area: cardetaillist[index].area,
                      pickup: cardetaillist[index].pickup,
                      managedby: cardetaillist[index].managedby,
                      price: cardetaillist[index].price,
                      subcategories: cardetaillist[index].subcategories,
                    ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
