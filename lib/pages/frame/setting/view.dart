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
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 20,
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 120,
                height: 120,
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: const CircleAvatar(
                  backgroundImage: AssetImage('lib/images/avatar.jpeg'),
                  radius: 44,
                ),
              ),
            ),
            const SizedBox(height: 12),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'convitnhodev',
                style: TextStyle(
                  color: AppColor.primaryText,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            //const SizedBox(height: 12),
            TextButton(
              onPressed: () {},
              child: const Text('Edit Profile'),
            ),
            const SizedBox(height: 12),
            const SettingCard(
              icon: Icons.person_outline,
              title: 'Account',
            ),
            const SizedBox(height: 12),
            const SettingCard(
              icon: Icons.language_outlined,
              title: 'Language',
            ),
            const SizedBox(height: 12),
            const SettingCard(
              icon: Icons.notifications_active_outlined,
              title: 'Notification',
            ),
            const SizedBox(height: 12),
            const SettingCard(
              icon: Icons.dark_mode_outlined,
              title: 'Dark Mode',
            ),
            const SizedBox(height: 12),
            const SettingCard(
              icon: Icons.feedback_outlined,
              title: 'Give Feedback',
            ),
            const SizedBox(height: 12),
            const SettingCard(
              icon: Icons.info_outline_rounded,
              title: 'About',
            ),
          ],
        ),
      ),
    );
  }
}
