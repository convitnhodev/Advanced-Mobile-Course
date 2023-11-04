import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/routes/pages.dart';
import 'package:flutter_application_1/pages/frame/sign_in/index.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Future<void> main() async {
  runApp(
    const MaterialApp(
      title: 'LetTutor',
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
    ),
  );
  // runApp(MaterialApp(home: SignInPage()));
  //  runApp(MaterialApp(home: DetailTutorPage()));
//  runApp(MaterialApp(home: RegisterPage()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
      ),
    );
  }
}
