import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/style/color.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 12),
      color: AppColor.primarySecondaryBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 16, 12, 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('lib/images/avatar.jpeg'),
                  radius: 36,
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'convitnhodev',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.1,
                          color: AppColor.primaryText,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        '18:00 - 18:25',
                        style: TextStyle(
                          letterSpacing: 0.1,
                          color: AppColor.primaryText,
                        ),
                      ),
                      Text(
                        'Nov 4, 2023',
                        style: TextStyle(
                          letterSpacing: 0.1,
                          color: AppColor.primaryText,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'No request for this lesson.',
              style: TextStyle(color: AppColor.primaryText),
            ),
            const SizedBox(height: 8),
            const Text(
              'No reviews from tutor yet.',
              style: TextStyle(color: AppColor.primaryText),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Report',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text('Write Review'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
