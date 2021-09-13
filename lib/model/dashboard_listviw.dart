import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DashBoardListView {
  var icon;
  var title;
  var subTitle;

  DashBoardListView({ this.icon, this.title, this.subTitle});
}

   List<DashBoardListView> dashBoardList = [
DashBoardListView(icon: Icons.person, title: 'Profile', subTitle: 'Personal and grade Information'),
DashBoardListView(icon: Icons.fact_check_outlined, title: 'Attendance', subTitle: "Child's Daily Attendance"),
DashBoardListView(icon: Icons.work_outline_rounded, title: 'WorkSheet', subTitle: "View and Download WorkSheets"),
DashBoardListView(icon: Icons.request_page_outlined, title: 'HomeWork', subTitle: "View and Download HomeWork"),
DashBoardListView(icon: Icons.blur_circular, title: 'Circulars', subTitle: "Circular Sent by School"),
DashBoardListView(icon: Icons.local_library, title: 'Library', subTitle: "Books to be Returned to Library"),
DashBoardListView(icon: Icons.directions_bus_rounded, title: 'Bus', subTitle: "Child's Bus"),

  ];


