import 'package:get/get.dart';

import 'controller.dart';


class TutorsListBinding implements Bindings {
  @override
    void dependencies() {
    Get.lazyPut<TutorsListController>(() => TutorsListController());
  }
}