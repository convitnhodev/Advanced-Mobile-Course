import 'package:flutter_application_1/pages/frame/home/controller.dart';
import 'package:get/get.dart';


class HomeBinding implements Bindings {
  @override
    void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}