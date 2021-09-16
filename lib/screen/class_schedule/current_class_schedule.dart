import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_reqelford/model/base_model.dart';
import 'package:test_reqelford/screen/assignment/assignment_controller.dart';

import 'class_tile.dart';


class CurrentClassSchedule extends StatelessWidget {
  static final String id = '/AssignmentScreen';
  final Welcome welcome = Welcome();
  final AssignmentController assignmentController =
      Get.find<AssignmentController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetX<AssignmentController>(
        init: AssignmentController(),
        builder: (assignmentController) => ListView.builder(
          itemCount: assignmentController.listData.length,
          itemBuilder: (context, index) {
            return ClassTile(assignmentController.listData[index]);
          },
        ),
      ),
    );
  }
}
