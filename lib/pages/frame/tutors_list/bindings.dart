import 'package:flutter_application_1/pages/frame/tutors_list/controller.dart';
import 'package:get/get.dart';


class TutorsListBinding implements Bindings {
  @override
    void dependencies() {
    Get.lazyPut<TutorsListController>(() => TutorsListController());
  }
}