// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:test_reqelford/widgets/my_drawer.dart';
//
// import 'fee_controller.dart';
//
//
//
// class FeeReceiptScreen extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         endDrawer: MyDrawer(),
//         appBar: AppBar(
//           title: Text(
//             "Assignment",
//             style: TextStyle(color: Colors.black),
//           ),
//           iconTheme: IconThemeData(color: Colors.black),
//           backgroundColor: Colors.deepPurple[100],
//         ),
//         body: GetX<FeeController>(
//           init: FeeController(),
//           builder: (assignmentController) =>
//               ListView.builder(
//                 itemCount: assignmentController.listData.length,
//
//                 itemBuilder: (context,index){ return AssignmentTile(assignmentController.listData[index]
//
//                 ); },
//
//               ),
//
//         )
//
//     );
//   }
// }
