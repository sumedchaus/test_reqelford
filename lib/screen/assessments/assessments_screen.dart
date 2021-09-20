import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_reqelford/screen/assessments/assessments_controller.dart';
import 'package:test_reqelford/widgets/my_drawer.dart';

import 'assessment_tile.dart';



class AssessmentScreen extends StatelessWidget {
  static String id = "/AssessmentScreen";
  AssessmentController assessmentController = Get.find<AssessmentController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: MyDrawer(),
        appBar: AppBar(
          title: Text(
            "Assessments",
            style: TextStyle(color: Colors.black),
          ),
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.deepPurple[100],
        ),
        body: Obx(() => ListView.builder(
               itemCount: assessmentController.listData.length,

                itemBuilder: (context,index){ return AssessmentTile(assessmentController.listData[index]

                ); },

              ),

        )
    );
  }
}
