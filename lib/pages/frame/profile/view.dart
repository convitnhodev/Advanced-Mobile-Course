import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/style/color.dart';
import 'package:flutter_application_1/pages/frame/setting/index.dart';
import 'package:flutter_application_1/widgets/Profile_card.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
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
            ProfileCard(
              icon: Icons.calendar_month_outlined,
              title: 'Schedule',
              onPressed: () {},
            ),
            const SizedBox(height: 12),
            ProfileCard(
              icon: Icons.history_outlined,
              title: 'History',
              onPressed: () {},
            ),
            const SizedBox(height: 12),
            ProfileCard(
              icon: Icons.settings_outlined,
              title: 'Settings',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SettingPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
