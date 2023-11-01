import 'package:flutter_application_1/pages/frame/detail_tutor/index.dart';
import 'package:get/get.dart';


class DetailTutorBinding implements Bindings {
  @override
    void dependencies() {
    Get.lazyPut<DetailTutorController>(() => DetailTutorController());
  }
}