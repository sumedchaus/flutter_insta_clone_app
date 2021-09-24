
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import 'assessment_services.dart';
import 'base_model.dart';

class AssessmentController extends GetxController {
  bool allowWriteFile = false;
  String progress = "";
  Dio dio;
  var isLoading = false.obs;


  RxList<Welcome> listData = RxList<Welcome>([]);
  var _x;

  get x => _x;

  static get to => Get.find<AssessmentController>();

  @override
  void onInit() {
    isLoading.value = true;
    AssessmentService.fetchData();
    super.onInit();
    dio = Dio();
  }


}
