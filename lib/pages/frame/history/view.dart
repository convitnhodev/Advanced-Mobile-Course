import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/history_card.dart';

import '../../../common/style/color.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryBackground,
      appBar: AppBar(
        backgroundColor: AppColor.primaryBackground,
        elevation: 0,
        title: const Text(
          'History',
          style: TextStyle(color: AppColor.primaryText),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Text(
              'You have finished 12 lessons',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                color: AppColor.primaryText,
              ),
            ),
            const SizedBox(height: 16),
            const SizedBox(height: 8),
            ...List<Widget>.generate(
              12,
              (index) => const HistoryCard(),
            ),
          ],
        ),
      ),
    );
  }
}
