import 'package:dio/dio.dart';
import 'package:test_reqelford/model/base_model.dart';
import 'package:test_reqelford/screen/assessments/assessments_controller.dart';

var controller = AssessmentController.to;
var loading = true;

class AssessmentService {
  static Future<List<Welcome>> fetchData() async {

    String url =
        "http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline";

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
    return null;
  }
}
