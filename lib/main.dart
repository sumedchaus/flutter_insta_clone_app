import 'package:flutter/material.dart';
import 'package:flutter_insta_clone_app/insta_tile.dart';
import 'package:flutter_insta_clone_app/splash_screen.dart';

import 'home_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
              textTheme: TextTheme(headline6:   TextStyle(color: Colors.black,fontSize: 20)),
          // color: Color(0xfff8faf8),
          elevation: 0



      ),

        buttonTheme:ButtonThemeData(
          buttonColor: Colors.black

        ) ,
        primarySwatch: Colors.blue,
        // buttonColor: Colors.black,
          primaryColor: Colors.black,
        primaryIconTheme: IconThemeData(color: Colors.black),
        primaryTextTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black, ),),
        textTheme:TextTheme(bodyText1: TextStyle(color: Colors.black)),

      ),
      home: SplashScreenPage(),

    );
  }
}

