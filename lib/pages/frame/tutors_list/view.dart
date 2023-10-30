import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/style/color.dart';

import '../../../widgets/tutor_card.dart';

class TutorsListPage extends StatefulWidget {
  const TutorsListPage({super.key});

  @override
  State<TutorsListPage> createState() => _TutorsListPageState();
}

class _TutorsListPageState extends State<TutorsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tutors',
          style: TextStyle(color: AppColor.primaryText),
        ),
        backgroundColor: AppColor.primaryBackground,
        elevation: 0,
      ),
      backgroundColor: AppColor.primaryBackground,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              children: const [
                TutorCard(),
                TutorCard(),
                TutorCard(),
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
                  Icon(Icons.schedule),
                  SizedBox(width: 10),
                  Text('See more detail'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
