import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/style/color.dart';
import 'package:flutter_application_1/pages/frame/course_list/index.dart';
import 'package:flutter_application_1/pages/frame/profile/view.dart';

import '../tutor_list/view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> pages = [
    const TutorsListPage(),
    const CourseListPage(),
    const ProfilePage(),
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
        backgroundColor: AppColor.primaryBackground,
        selectedItemColor: Colors.blue,
        unselectedItemColor: AppColor.primaryText,
        onTap: (value) => {
          setState(() {
            current_index = value;
          }),
        },
        currentIndex: current_index,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.school_outlined),
            label: 'Tutor',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.text_snippet_outlined),
            label: 'Course',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
