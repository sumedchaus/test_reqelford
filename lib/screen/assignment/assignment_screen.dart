import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_reqelford/widgets/my_drawer.dart';

import 'assignment_controller.dart';
import 'assignment_tile.dart';

class AssignmentScreen extends StatelessWidget {
  static final String id = '/AssignmentScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: MyDrawer(),
        appBar: AppBar(
          title: Text(
            "Assignment",)

        ),
        body: GetX<AssignmentController>(
          init: AssignmentController(),
          builder: (assignmentController) => ListView.builder(
            itemCount: assignmentController.listData.length,
            itemBuilder: (context, index) {
              return AssignmentTile(assignmentController.listData[index]);
            },
          ),
        ));
  }
}
