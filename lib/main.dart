
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/common/routes/pages.dart';
import 'package:flutter_application_1/pages/frame/home/view.dart';
import 'package:flutter_application_1/pages/frame/sign_in/view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Future<void> main() async {
   runApp(MaterialApp(home: HomePage()));
//  runApp(MaterialApp(home: SignInPage()));
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key});


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, chilld) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue
        ),
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
      ),
      
    ); 
  }
}