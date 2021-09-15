import 'package:dio/dio.dart';

import 'assignment_controller.dart';
import 'assignment_data.dart';




var controller= AssignmentController.to;

class DataServices {
  static Future<List<Welcome>> fetchData() async {
    // Future.delayed(
    //     Duration.zero,
    //         () => Get.dialog(Center(child: CircularProgressIndicator()),
    //         barrierDismissible: false));
    String url = "http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline";

    Dio dio = Dio();

    Response response = await dio.get(url);
    // Get.back();
    if (response.statusCode == 200) {
      print(response.statusCode);
      for (var item in response.data) {
        controller.listData.add(Welcome.fromJson(item));
      }
      return controller.listData;
    }
  }
}
