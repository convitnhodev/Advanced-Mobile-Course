import 'package:get/get.dart';


class SettingBinding implements Bindings {
  @override
    void dependencies() {
    Get.lazyPut<SettingBinding>(() => SettingBinding());
  }
}