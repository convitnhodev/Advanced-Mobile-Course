import 'package:flutter_application_1/common/routes/names.dart';
import 'package:flutter_application_1/pages/frame/sign_in/bindings.dart';
import 'package:flutter_application_1/pages/frame/sign_in/view.dart';
import 'package:get/route_manager.dart';

class AppPages {
  static const INITIAL = AppRoutes.SIGN_IN; 



  static List<String> history = [];

  static final List<GetPage> routes = [



    GetPage(
      name: AppRoutes.SIGN_IN,
      page: () => const SignInPage(),
      binding: SignInBinding(),
    ),
  ]; 
}