

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/frame/tutors_list/controller.dart';
import 'package:get/get.dart';

class TutorsListPage extends GetView<TutorsListController> {
   const TutorsListPage({super.key});

  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tutor'
        ),
      ),
      drawer: Drawer(backgroundColor: Colors.black),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(

            ), 
            
          ],
        ),
      ),
    );
  }
}