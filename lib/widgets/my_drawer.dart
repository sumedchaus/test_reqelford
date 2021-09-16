import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_reqelford/const/asset_path.dart';
import 'package:test_reqelford/controller/login_controller.dart';
import 'package:test_reqelford/screen/assignment/assignment_screen.dart';
import 'package:test_reqelford/screen/class_schedule/class_schedule.dart';
import 'package:test_reqelford/screen/dashboard_screen.dart';
import 'package:test_reqelford/screen/profile_screen.dart';
import 'package:test_reqelford/screen/video/screens/video_screen.dart';

import 'list_expansion_tile.dart';
import 'list_tile_drawer.dart';

class MyDrawer extends StatelessWidget {
  LoginController loginController = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          // Important: Remove any padding from the ListView.
          children: [
            Container(
              height: 120,
              child: DrawerHeader(
                decoration: BoxDecoration(
                    // color: Colors.deepPurple,
                    ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.transparent, //temperory
                      child: Image.asset(profileImage),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          loginController.userNameEditingController.text,
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(
                          'jfvkjfvkjbkfdn kb',
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            listTileDrawer(
              icon: Icon(Icons.dashboard_customize),
              text: 'Dashboard',
              onTap: () {
                Get.toNamed(DashBoard.id);
              },
            ),
            listTileDrawer(
                text: 'Profile',
                onTap: () {
                  Get.toNamed(ProfileScreen.id);
                },
                icon: Icon(Icons.person)),
            listTileDrawer(
                text: 'Class Schedules',
                onTap: () {
                  Get.toNamed(ClassScheduleScreen.id);
                },
                icon: Icon(Icons.menu)),
            listTileDrawer(
                text: 'Assignments',
                onTap: () {
                  Get.toNamed(AssignmentScreen.id);
                },
                icon: Icon(Icons.phone_in_talk_sharp)),
            ListExpandedTileView(
              title: 'Assessments',
              icon1: Icon(Icons.note_add),
              expansionListTile: Column(
                children: [
                  listTileDrawer(
                    iconLeading: Icon(Icons.arrow_forward),
                    text: 'Assesments',
                    onTap: () {},
                  ),
                  listTileDrawer(
                    iconLeading: Icon(Icons.arrow_forward),
                    text: 'Computerbased Test',
                    onTap: () {},
                  ),
                ],
              ),
            ),
            ListExpandedTileView(
              title: 'Video Library',
              icon1: Icon(Icons.video_collection),
              expansionListTile: Column(
                children: [
                  listTileDrawer(
                    iconLeading: Icon(Icons.arrow_forward),
                    text: 'Genral Videos',
                    onTap: () {
                      Get.toNamed(VideoScreen.id);
                    },
                  ),
                  listTileDrawer(
                    iconLeading: Icon(Icons.arrow_forward),
                    text: 'Acadmic Videos',
                    onTap: () {},
                  ),
                ],
              ),
            ),
            listTileDrawer(
                text: 'Report Card',
                onTap: () {},
                icon: Icon(Icons.credit_card_rounded)),
            listTileDrawer(
                text: 'Fee Receipts', onTap: () {}, icon: Icon(Icons.receipt)),
          ],
        ),
      ),
    );
  }
}
