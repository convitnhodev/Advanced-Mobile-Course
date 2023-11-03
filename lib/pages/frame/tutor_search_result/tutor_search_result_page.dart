import 'package:flutter/material.dart';

import '../../../common/style/color.dart';
import '../../../widgets/tutor_card_horizontal.dart';
import '../detail_tutor/view.dart';

class TutorSearchResultPage extends StatefulWidget {
  const TutorSearchResultPage({super.key});

  @override
  State<TutorSearchResultPage> createState() => _TutorSearchResultPageState();
}

class _TutorSearchResultPageState extends State<TutorSearchResultPage> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Result ${_currentPage + 1} of 6',
          style: const TextStyle(
            color: AppColor.primaryText,
          ),
        ),
        backgroundColor: AppColor.primaryBackground,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: AppColor.primaryBackground,
      body: Column(
        children: [
          const SizedBox(height: 24),
          Expanded(
            child: PageView(
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: const [
                TutorCardHorizontal(),
                TutorCardHorizontal(),
                TutorCardHorizontal(),
                TutorCardHorizontal(),
                TutorCardHorizontal(),
                TutorCardHorizontal(),
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
                  Text('View Detail'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
