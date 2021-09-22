import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_reqelford/screen/assessments/assessments_controller.dart';
import 'package:test_reqelford/screen/assessments/assessments_screen.dart';
import 'package:test_reqelford/screen/assignment/assignment_controller.dart';
import 'package:test_reqelford/screen/assignment/assignment_screen.dart';
import 'package:test_reqelford/screen/class_schedule/class_schedule.dart';
import 'package:test_reqelford/screen/dashboard_screen.dart';
import 'package:test_reqelford/screen/fee_receipt/fee_controller.dart';
import 'package:test_reqelford/screen/fee_receipt/fee_receipt_screen.dart';
import 'package:test_reqelford/screen/login_screen.dart';
import 'package:test_reqelford/screen/profile/profile_screen.dart';
import 'package:test_reqelford/screen/video/screens/video_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     Get.put(AssignmentController());
    Get.put(AssessmentController());
      Get.put(FeeController());

    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(
              headline6: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
          ),
          color: Colors.deepPurple[100],
        ),

        // textTheme: TextTheme(
        //   bodyText1: TextStyle(),
        //   bodyText2: TextStyle(),
        // ).apply(
        //   bodyColor: Colors.black,
        //   displayColor: Colors.blue,
        //
        //
        // ),
        // platform: TargetPlatform.iOS,
        primarySwatch: Colors.deepPurple,
        buttonColor: Colors.black,
        primaryIconTheme: IconThemeData(color: Colors.black),
        //    primarySwatch: Colors.blue,
        //           primaryColor: Colors.black,
        //           buttonColor: Colors.black,
        //           primaryIconTheme: IconThemeData(color: Colors.black),
        //           primaryTextTheme: TextTheme(
        //               bodyText1: TextStyle(color: Colors.black, fontFamily: "Aveny")),
        //           textTheme: TextTheme(bodyText1: TextStyle(color: Colors.black))),
      ),
      initialRoute: LoginScreen.id,
      getPages: [
        GetPage(name: LoginScreen.id, page: () => LoginScreen()),
        GetPage(name: DashBoard.id, page: () => DashBoard()),
        GetPage(name: ProfileScreen.id, page: () => ProfileScreen()),
        GetPage(name: AssignmentScreen.id, page: () => AssignmentScreen()),
        GetPage(
            name: ClassScheduleScreen.id, page: () => ClassScheduleScreen()),
        GetPage(name: VideoScreen.id, page: () => VideoScreen()),
        GetPage(name: AssessmentScreen.id, page: () => AssessmentScreen()),
        GetPage(name: FeeReceiptScreen.id, page: () => FeeReceiptScreen()),
      ],
      unknownRoute: GetPage(name: '/', page: () => LoginScreen()),
    );
  }
}
