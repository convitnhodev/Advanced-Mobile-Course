import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/style/color.dart';

class UpcomingLessonCard extends StatelessWidget {
  const UpcomingLessonCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
      decoration: BoxDecoration(color: AppColor.primaryBackground),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Upcoming Lesson',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: AppColor.primaryText,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Sun, 05 Nov 23 18:00 - 18:25',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: AppColor.primaryText,
            ),
          ),
          SizedBox(height: 24),
          Text(
            'Starting in 2 hours 41 minutes',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColor.secondaryText,
            ),
          ),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}
