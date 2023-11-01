import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/style/color.dart';
import 'package:flutter_application_1/pages/frame/detail_tutor/index.dart';
import 'package:flutter_application_1/pages/frame/tutor_search/index.dart';

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
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const TutorSearchPage(),
                ),
              );
            },
            icon: const Icon(
              Icons.search_outlined,
              color: AppColor.primaryText,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.video_call_outlined,
              color: AppColor.primaryText,
            ),
          ),
        ],
      ),
      backgroundColor: AppColor.primaryBackground,
      body: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
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
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const DetailTutorPage(),
                  ),
                );
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.info_outline_rounded),
                  SizedBox(width: 12),
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
