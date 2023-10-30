import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/style/color.dart';

class SettingCard extends StatelessWidget {
  const SettingCard({
    super.key,
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
