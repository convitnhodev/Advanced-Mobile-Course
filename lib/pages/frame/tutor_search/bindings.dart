import 'package:get/get.dart';


class SearchBinding implements Bindings {
  @override
    void dependencies() {
    Get.lazyPut<SearchBinding>(() => SearchBinding());
  }
}