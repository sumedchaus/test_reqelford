import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController
    with SingleGetTickerProviderMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(
      text: 'Personal',
      icon: Icon(Icons.person),
    ),
    Tab(
      text: 'Grade',
      icon: Icon(Icons.grade),
    ),
    Tab(
      text: 'Parent',
      icon: Icon(Icons.bedroom_parent),
    ),
    Tab(
      text: 'Address',
      icon: Icon(Icons.home),
    ),
  ];

  TabController tabController;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
