import 'package:animator/view/detail_screen.dart';
import 'package:animator/view/home_screen.dart';
import 'package:animator/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(debugShowCheckedModeBanner: false,
        // initialRoute: 'detail',
        routes: {
          '/':(context) => Splashscreen(),
          'home':(context) => Homescreen(),
          'detail':(context) => Detailscreen(),
        },
      ),
    ),
  );
}
