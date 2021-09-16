import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_reqelford/screen/assessments/assessments_controller.dart';
import 'package:test_reqelford/screen/assessments/assessments_screen.dart';
import 'package:test_reqelford/screen/assignment/assignment_controller.dart';
import 'package:test_reqelford/screen/assignment/assignment_screen.dart';
import 'package:test_reqelford/screen/dashboard_screen.dart';
import 'package:test_reqelford/screen/login_screen.dart';
import 'package:test_reqelford/screen/profile_screen.dart';
import 'package:test_reqelford/video/screens/video_screen.dart';

import 'class_schedule/class_schedule.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(AssignmentController());
    Get.put(AssessmentController());

    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(),
          bodyText2: TextStyle(),
        ).apply(
          bodyColor: Colors.black,
          displayColor: Colors.blue,
        ),
        // platform: TargetPlatform.iOS,
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: LoginScreen.id,
      getPages: [
        GetPage(name: LoginScreen.id, page: () => LoginScreen()),
        GetPage(name: DashBoard.id, page: () => DashBoard()),
        GetPage(name: ProfileScreen.id, page: () => ProfileScreen()),
        GetPage(name: AssignmentScreen.id, page: () => AssignmentScreen()),
        GetPage(name: ClassScheduleScreen.id, page: () => ClassScheduleScreen()),
        GetPage(name: VideoScreen.id, page: () => VideoScreen()),
        GetPage(name: AssessmentScreen.id, page: () => AssessmentScreen()),
      ],
    );
  }
}
