
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import 'assignment_data.dart';
import 'assignment_service.dart';


class AssignmentController extends GetxController {
  bool isLoading;
  bool allowWriteFile = false;
  String progress = "";
  Dio dio;

  List<Welcome> listData = List<Welcome>().obs;
  var _x;

  get x => _x;

  static get to => Get.find<AssignmentController>();

  @override
  void onInit() {
    DataServices.fetchData();
    super.onInit();
    dio = Dio();
  }

}