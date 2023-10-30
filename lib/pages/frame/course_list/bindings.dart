import 'package:flutter_application_1/pages/frame/course_list/controller.dart';
import 'package:get/get.dart';


class CourseListBinding implements Bindings {
  @override
    void dependencies() {
    Get.lazyPut<CourseListController>(() => CourseListController());
  }
}