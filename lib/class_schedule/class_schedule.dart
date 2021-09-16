import 'package:flutter/material.dart';
import 'package:test_reqelford/widgets/my_drawer.dart';

import 'current_class_schedule.dart';
import 'ended_class_schedule.dart';

class ClassScheduleScreen extends StatelessWidget {
  static final String id = '/ClassScheduleScreen';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        endDrawer: MyDrawer(),
        appBar: AppBar(
          title: Text(
            "Class Schedule",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.deepPurple[100],
          bottom: TabBar(
            indicator: BoxDecoration(color: Colors.deepPurple[400]),
            tabs: [
              Tab(
                text: "Current",
              ),
              Tab(
                text: 'Ended',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CurrentClassSchedule(),
            EndedClassScreen(),
          ],
        ),
      ),
    );
  }
}
