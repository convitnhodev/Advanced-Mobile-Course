import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/style/color.dart';
import 'package:flutter_application_1/widgets/schedule_card.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryBackground,
      appBar: AppBar(
        backgroundColor: AppColor.primaryBackground,
        elevation: 0,
        title: const Text(
          'Scheduled Lesson',
          style: TextStyle(color: AppColor.primaryText),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Text(
              'You have 9 scheduled lessons',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                color: AppColor.primaryText,
              ),
            ),
            const SizedBox(height: 16),
            const SizedBox(height: 8),
            ...List<Widget>.generate(
              9,
              (index) => const ScheduleCard(),
            ),
          ],
        ),
      ),
    );
  }
}
