import 'package:flutter/material.dart';

import '../common/style/color.dart';

class CourseTopicCard extends StatelessWidget {
  const CourseTopicCard({
    super.key,
    required this.icon,
    required this.title,
    required this.onPressed,
  });

  final IconData icon;
  final String title;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColor.primarySecondaryBackground,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: AppColor.primaryText,
              size: 28,
            ),
            const SizedBox(width: 16),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                color: AppColor.primaryText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}