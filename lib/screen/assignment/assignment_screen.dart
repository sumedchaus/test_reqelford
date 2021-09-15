import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_reqelford/screen/assignment/assignment_controller.dart';
import 'package:test_reqelford/screen/assignment/assignment_tile.dart';
import 'package:test_reqelford/widgets/my_drawer.dart';

import 'assignment_data.dart';


class AssignmentScreen extends StatelessWidget {
 static final String id = '/AssignmentScreen';
  // String now = DateFormat("dd-MM-yyyy").format(DateTime.now());
  Welcome welcome = Welcome();
  AssignmentController assignmentController = Get.put(AssignmentController());



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MyDrawer(),
      appBar: AppBar(
        title: Text(
          "Assignment",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.deepPurple[100],
      ),
      body: GetX<AssignmentController>(
            init: AssignmentController(),
             builder: (myFoodController) =>
                 ListView.builder(
        itemCount: assignmentController.listData.length,

        itemBuilder: (context,index){ return AssignmentTile(assignmentController.listData[index]

        ); },

      ),

      )
    );
  }
}

