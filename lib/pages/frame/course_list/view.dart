import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/style/color.dart';

import '../../../widgets/course_card.dart';

class CourseListPage extends StatefulWidget {
  const CourseListPage({super.key});

  @override
  State<CourseListPage> createState() => _CourseListPageState();
}

class _CourseListPageState extends State<CourseListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Courses',
          style: TextStyle(color: AppColor.primaryText),
        ),
        backgroundColor: AppColor.primaryBackground,
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_outlined,
              color: AppColor.primaryText,
            ),
          ),
        ],
      ),
      backgroundColor: AppColor.primaryBackground,
      body: Column(
        children: [
          const SizedBox(height: 8,),
          Expanded(
            child: PageView(
              children: const [
                CourseCard(),
                CourseCard(),
                CourseCard(),
                CourseCard(),
                CourseCard(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: TextButton(
              style: TextButton.styleFrom(
                minimumSize: const Size.fromHeight(48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: const BorderSide(
                    color: Colors.blue,
                  ),
                ),
              ),
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.next_plan_outlined),
                  SizedBox(width: 12),
                  Text('English For Traveling'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
