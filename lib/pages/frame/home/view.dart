

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/frame/home/controller.dart';
import 'package:flutter_application_1/pages/frame/search/view.dart';
import 'package:flutter_application_1/pages/frame/setting/view.dart';
import 'package:flutter_application_1/pages/frame/sign_in/view.dart';
import 'package:flutter_application_1/pages/frame/tutors_list/controller.dart';
import 'package:flutter_application_1/pages/frame/tutors_list/view.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


    List<Widget> pages = [
    TutorsListPage(),
    SearchPage(), 
    SettingPage(), 
    // SignInPage(),
   ]; 


   int current_index = 0;

   List<String> pagesTitles = ['Tutors', 'Search', 'Settings'];
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     pagesTitles[current_index]
      //   )
              
      // ),
      body: pages[current_index], 


      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => {
          setState(() {
            current_index = value;
          }),
      
        },

        currentIndex: current_index,



        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.abc), 
            label: 'Tutor', 
            ), 
             BottomNavigationBarItem(
            icon: Icon(Icons.abc), 
            label: 'Search', 
            ), 
             BottomNavigationBarItem(
            icon: Icon(Icons.abc), 
            label: 'Setting', 
            ), 

            //   BottomNavigationBarItem(
            // icon: Icon(Icons.abc), 
            // label: 'Signin', 
            // ), 
      ]),
    

    );
    
 }
}

