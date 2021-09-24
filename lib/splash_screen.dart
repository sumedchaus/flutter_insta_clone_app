import 'package:flutter/material.dart';
import 'package:flutter_insta_clone_app/const.dart';
import 'package:flutter_insta_clone_app/home_page.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: SplashScreen(
          seconds: 4,
          navigateAfterSeconds: HomePage(),
          // title: new Text('GeeksForGeeks',textScaleFactor: 2,),

          useLoader: false,
          image: Image.asset(
            instalogo,
            alignment: Alignment.center,
          ),
          title: Text("Xtra Lite Pro Max"),
          // loadingText: Text("Loading"),
          photoSize: 50.0,
          // loaderColor: Colors.blue,
          loadingText: Text(
            ' From \n FaceBook',textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20,

            ),

          ),
        ),
      ),
    );
  }
}
