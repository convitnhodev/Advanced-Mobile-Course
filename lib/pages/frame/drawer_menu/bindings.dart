import 'package:flutter_application_1/pages/frame/drawer_menu/index.dart';
import 'package:flutter_application_1/pages/frame/sign_in/controller.dart';
import 'package:get/get.dart';


class DrawerMenuBinding implements Bindings {
  @override
    void dependencies() {
    Get.lazyPut<DrawerMenuController>(() => DrawerMenuController());
  }
}