import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vehical_maintenance/Container/Center1Card.dart';
import 'package:vehical_maintenance/Container/CenterCard.dart';
import 'package:vehical_maintenance/Container/ServiceCenterCard.dart';
import 'package:vehical_maintenance/Container/ViewCard.dart';
import 'package:vehical_maintenance/cardetail.dart';
import 'package:vehical_maintenance/model/CarModel.dart';
import 'package:vehical_maintenance/model/Center1Model.dart';
import 'package:vehical_maintenance/model/CenterModel.dart';
import 'package:vehical_maintenance/model/ServiceCenterModel.dart';
import 'package:vehical_maintenance/model/ViewModel.dart';

class Viewall extends StatefulWidget {

  @override
  _ViewallState createState() => _ViewallState();
}
class _ViewallState extends State<Viewall> {

  @override
  final List<ViewModel>viewlist =[
    ViewModel("assets/images/repair.svg", "General Service"),
    ViewModel("assets/images/car-wash.svg", "Car Wash"),
    ViewModel("assets/images/spa.svg", "Car Spa"),
    ViewModel("assets/images/battery.svg", "Battery Issues"),
  ];

  final List<ServiceCenterModel>servicecenterlist = [
    ServiceCenterModel("assets/images/Frame7.png", "Universal Honda", "assets/images/star.svg", "4.5", "assets/images/location.svg", "Paldi", "Pick up & Drop Off", "Managed By", "₹149", "Universal Honda"),
  ];
  final List<CenterModel>centerlist = [
    CenterModel("assets/images/Frame7.png","Universal Honda","assets/images/star.svg","4.5","assets/images/location.svg","Ambawadi","Pick up& Drop off","Managed By","₹149","Universal Honda"),
  ];
  final List<Center1Model>center1list=[
    Center1Model("assets/images/Frame6.png", "Universal Honda","assets/images/star.svg","4.5","assets/images/location.svg","Satellite","Pick up& Drop off","Managed By","₹149","Universal Honda"),
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
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10),
            Container(
              height:50 ,
              margin: const EdgeInsets.only(bottom:10.0,top: 0.0),
              padding:EdgeInsets.only(left: 25.0,top: 10) ,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: viewlist.length,
                itemBuilder: (BuildContext contex,int  index)=>
                    ViewCard(image: viewlist[index].image,
                      name: viewlist[index].name,
                    ),
              ),
            ),
            SizedBox(),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => CarDetail()));
              },
              child: Container(
                height:240 ,
                decoration: BoxDecoration(
                  color: Colors.white ,
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: servicecenterlist.length,
                  itemBuilder: (BuildContext contex,int  index)=>
                      ServiceCenterCard(image: servicecenterlist[index].image,
                        title: servicecenterlist[index].title,
                        star: servicecenterlist[index].star,
                        rating: servicecenterlist[index].rating,
                        location: servicecenterlist[index].location,
                        area: servicecenterlist[index].area,
                        pickup: servicecenterlist[index].pickup,
                        managedby: servicecenterlist[index].managedby,
                        price: servicecenterlist[index].price,
                        subcategories: servicecenterlist[index].subcategories,
                      ),
                ),
              ),
            ),
            SizedBox(),
            Container(
              height:120 ,
              //margin: const EdgeInsets.only(bottom:10.0),
              decoration: BoxDecoration(
                color: Colors.white ,
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: centerlist.length,
                itemBuilder: (BuildContext contex,int  index)=>
                    CenterCard(image: centerlist[index].image,
                      title: centerlist[index].title,
                      star: centerlist[index].star,
                      rating: centerlist[index].rating,
                      location: centerlist[index].location,
                      area: centerlist[index].area,
                      pickup: centerlist[index].pickup,
                      managedby: centerlist[index].managedby,
                      price: centerlist[index].price,
                      subcategories: centerlist[index].subcategories,
                    ),
              ),
            ),
            SizedBox(),
            Container(
              height:120 ,
              // margin: const EdgeInsets.only(bottom:10.0),
              decoration: BoxDecoration(
                color: Colors.white ,
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: center1list.length,
                itemBuilder: (BuildContext contex,int  index)=>
                    CenterCard(image: center1list[index].image,
                      title: center1list[index].title,
                      star: center1list[index].star,
                      rating: center1list[index].rating,
                      location: center1list[index].location,
                      area: center1list[index].area,
                      pickup: center1list[index].pickup,
                      managedby: center1list[index].managedby,
                      price: center1list[index].price,
                      subcategories: center1list[index].subcategories,
                    ),
              ),
            ),

            //         Padding(
            //           padding: const EdgeInsets.all(15),
            //           child: Container(
            //             // alignment: Alignment.topLeft,
            //             child: Container(
            //               height: 40,
            //               padding: EdgeInsets.only(left:5.0,top:1),
            //               decoration: BoxDecoration(
            //                 border: Border(
            //                   bottom: BorderSide(
            //                       color: Color.fromRGBO(242,242,242,1)
            //                   ),
            //                 ),
            //               ),
            //               child: TextField(
            //                 textAlign: TextAlign.left,
            //                 decoration: InputDecoration(
            //                     prefixIcon: Icon(Icons.search,color: Color.fromRGBO(189,189,189,1),size: 20,),
            //                     hintText: "Search ",
            //                     hintStyle: TextStyle(
            //                         color: Color.fromRGBO(189,189,189,1),
            //                         fontSize:14,
            //                         fontFamily: 'Mulish',
            //                         fontWeight: FontWeight.w600),
            //                     border: InputBorder.none
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ),
            //         Padding(
            //           padding: const EdgeInsets.only(top:90.0,left: 20),
            //           child: Text("Available Service Centers",
            //                 style: TextStyle(color: Color.fromRGBO(189,189,189,1),
            //             fontSize: 14,
            //             fontFamily: 'Mulish',
            //             fontWeight: FontWeight.w600,
            //           ) ,
            // ),
            //         ),

          ],

        ),
      ),
    );
  }
}
