

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/frame/setting/controller.dart';
import 'package:flutter_application_1/pages/frame/tutors_list/controller.dart';
import 'package:get/get.dart';

class SettingPage extends GetView<SettingController> {
   const SettingPage({super.key});

  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Setting'
        ),
              
      ),
      body: Container(),
    

    );
    
  }
}