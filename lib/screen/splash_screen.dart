import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:test_reqelford/const/asset_path.dart';
import 'package:test_reqelford/screen/login_screen.dart';

class SplashScreenPage extends StatelessWidget {
  static final String id = "/SplashScreenPage";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: SplashScreen(
          backgroundColor: Colors.deepPurple[100],
          seconds: 4,
          navigateAfterSeconds: LoginScreen(),
          // title: new Text('GeeksForGeeks',textScaleFactor: 2,),

          useLoader: true,
          image: Image.asset(
            reqelford,
            alignment: Alignment.center,
          ),
          // title: Text("Xtra Lite Pro Max"),
          // loadingText: Text("Loading"),

          photoSize: 100.0,
          loaderColor: Colors.purple,
          // loadingText: Text(
          //   ' From \n FaceBook',textAlign: TextAlign.center,
          //   style: TextStyle(fontSize: 20,
          //   ),
          // ),
        ),
      ),
    );
  }
}
