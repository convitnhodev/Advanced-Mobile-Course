import 'package:flutter_application_1/pages/frame/sign_in/controller.dart';
import 'package:get/get.dart';


class SignInBinding implements Bindings {
  @override
    void dependencies() {
    Get.lazyPut<SignInController>(() => SignInController());
  }
}