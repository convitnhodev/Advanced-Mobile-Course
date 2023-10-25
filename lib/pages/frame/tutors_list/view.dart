

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/frame/tutors_list/controller.dart';
import 'package:get/get.dart';

class TutorsListPage extends GetView<TutorsListController> {
   const TutorsListPage({super.key});

  @override
 
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            margin: EdgeInsets.all(24),
            elevation: 5, 
            child: Column(
              children: [
                Text('Upcoming lession'),
                Text('Fri, 30 Sep 22 18:30-18:55'),
                TextButton.icon(onPressed: () {}, 
                icon:  Image.asset('lib/images/facebook.png', width: 24, height: 24,), 
                label: Text('Enter lesson room'))
              ],
              
            ),

          ), 

          Text("Recommended tutors")
          
        ],
      ),
      
    );
    
  }
}