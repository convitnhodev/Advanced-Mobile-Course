import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/style/color.dart';
import 'package:flutter_application_1/widgets/setting_card.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Setting',
          style: TextStyle(
            color: AppColor.primaryText,
          ),
        ),
        backgroundColor: AppColor.primaryBackground,
        elevation: 0,
      ),
      backgroundColor: AppColor.primaryBackground,
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            SettingCard(
              icon: Icons.person_outline,
              title: 'Account',
            ),
            SizedBox(height: 20),
            SettingCard(
              icon: Icons.language_outlined,
              title: 'Language',
            ),
            SizedBox(height: 20),
            SettingCard(
              icon: Icons.notifications_active_outlined,
              title: 'Notification',
            ),
            SizedBox(height: 20),
            SettingCard(
              icon: Icons.dark_mode_outlined,
              title: 'Dark Mode',
            ),
            SizedBox(height: 20),
            SettingCard(
              icon: Icons.feedback_outlined,
              title: 'Give Feedback',
            ),
            SizedBox(height: 20),
            SettingCard(
              icon: Icons.info_outline_rounded,
              title: 'About',
            ),
          ],
        ),
      ),
    );
  }
}
