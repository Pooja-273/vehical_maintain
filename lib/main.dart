//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:vehical_maintenance/Account.dart';
import 'package:vehical_maintenance/Add%20vehicle.dart';
import 'package:vehical_maintenance/Addressdetail.dart';
import 'package:vehical_maintenance/All%20orders.dart';
import 'package:vehical_maintenance/Allorders1.dart';
import 'package:vehical_maintenance/CarDetail.dart';
import 'package:vehical_maintenance/Confirmed%20order-2.dart';
import 'package:vehical_maintenance/Confirmed%20order.dart';
import 'package:vehical_maintenance/Emergency.dart';
import 'package:vehical_maintenance/Help%20&%20Support.dart';
import 'package:vehical_maintenance/Intro.dart';
import 'package:vehical_maintenance/Introduction.dart';
import 'package:vehical_maintenance/Loginpage.dart';
import 'package:vehical_maintenance/Mainpage.dart';
import 'package:vehical_maintenance/OTP.dart';
import 'package:vehical_maintenance/Order.dart';
import 'package:vehical_maintenance/PersonalDetail.dart';
import 'package:vehical_maintenance/PersonalDetails.dart';
import 'package:vehical_maintenance/Refer%20and%20Earn.dart';
import 'package:vehical_maintenance/Track%20Location.dart';
import 'package:vehical_maintenance/Underprogress-1.dart';
import 'package:vehical_maintenance/Underprogress.dart';
import 'package:vehical_maintenance/ViewAll1.dart';
import 'package:vehical_maintenance/cardetail.dart';
import 'package:vehical_maintenance/extra.dart';
import 'package:vehical_maintenance/mydetails.dart';
import 'package:vehical_maintenance/servicebooking.dart';
import 'package:vehical_maintenance/vehicle.dart';
import 'package:vehical_maintenance/viewall.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        //primarySwatch: Colors.blue
      ),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home:Login(),
    );
  }
}
 
