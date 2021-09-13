import 'package:flutter/material.dart';
import 'package:test_reqelford/widgets/my_drawer.dart';

class ProfileScreen extends StatelessWidget {
  static final String id = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MyDrawer(),
      appBar: AppBar(
        title: Text("Profile",
          style: TextStyle(color: Colors.black),),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.deepPurple[100],




      ),
    );
  }
}
