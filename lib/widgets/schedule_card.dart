import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/style/color.dart';

class ScheduleCard extends StatelessWidget {
  const ScheduleCard({super.key});

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
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('lib/images/avatar.jpeg'),
                  radius: 36,
                ),
                const SizedBox(width: 12),
                const Expanded(
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
                const SizedBox(width: 4),
                TextButton(
                  onPressed: () async {
                    await showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        backgroundColor: AppColor.primaryBackground,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        title: const Text(
                          'Your Requests',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: AppColor.primaryText,
                          ),
                        ),
                        content: TextField(
                          minLines: 3,
                          maxLines: 4,
                          style: const TextStyle(
                            color: AppColor.primaryText,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Your requests for the tutor',
                            hintStyle: const TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.grey,
                            ),
                            contentPadding: const EdgeInsets.all(12),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: AppColor.primaryText,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: AppColor.primaryText,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context, false);
                            },
                            child: const Text(
                              'Cancel',
                              style: TextStyle(
                                fontSize: 18,
                                color: AppColor.primaryText,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context, true);
                            },
                            child: const Text(
                              'OK',
                              style: TextStyle(
                                fontSize: 18,
                                color: AppColor.primaryText,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  child: const Text('Edit'),
                )
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Cancel',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text('Join Now'),
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
