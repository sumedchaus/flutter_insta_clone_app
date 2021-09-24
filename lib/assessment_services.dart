import 'package:dio/dio.dart';

import 'assessments_controller.dart';
import 'base_model.dart';
import 'package:get/get.dart';



var loading = true;
AssessmentController assessmentController = Get.put(AssessmentController());


class AssessmentService {
  static Future<List<Welcome>> fetchData() async {

    String url =
        "http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline";

    Dio dio = Dio();

    var response = await dio.get(url);
    // Get.back();
    if (response.statusCode == 200) {
      print(response.statusCode);
      for (var item in response.data) {
        assessmentController.listData.add(Welcome.fromJson(item));
        assessmentController.isLoading.value = false;


      }
      assessmentController.isLoading.value = false;

      return assessmentController.listData;

    }
    return null;
  }
}
