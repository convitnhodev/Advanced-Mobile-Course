import 'package:flutter_application_1/common/routes/names.dart';
import 'package:flutter_application_1/pages/frame/drawer_menu/index.dart';
import 'package:flutter_application_1/pages/frame/home/bindings.dart';
import 'package:flutter_application_1/pages/frame/home/view.dart';
import 'package:flutter_application_1/pages/frame/sign_in/bindings.dart';
import 'package:flutter_application_1/pages/frame/sign_in/view.dart';
import 'package:get/route_manager.dart';

import '../../pages/frame/tutor_list/bindings.dart';
import '../../pages/frame/tutor_list/view.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL; 

  static List<String> history = [];

  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.SIGN_IN,
      page: () => const SignInPage(),
      binding: SignInBinding(),
    ),


        GetPage(
      name: AppRoutes.INITIAL,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),


    GetPage(
      name: AppRoutes.TUTORS_LIST, 
      page: () => const TutorsListPage(),
      binding: TutorsListBinding()
    ),

    GetPage(
      name: AppRoutes.DRAWER_MENU,
      page: () => const DrawerMenuPage(), 
      binding: DrawerMenuBinding() 
    )

  ]; 
}