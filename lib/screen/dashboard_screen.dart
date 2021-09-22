import 'package:flutter/material.dart';
import 'package:test_reqelford/widgets/my_drawer.dart';

class DashBoard extends StatelessWidget {
  static final String id = '/dash_board_1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "DashBoard",
        ),
      ),
      endDrawer: MyDrawer(),
    );
  }
}
