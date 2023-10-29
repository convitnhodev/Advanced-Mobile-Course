import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/frame/setting/controller.dart';
import 'package:flutter_application_1/pages/frame/tutors_list/controller.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/common/style/color.dart';

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
            style: TextStyle(color: AppColor.primaryText),
          ),
          backgroundColor: AppColor.primaryBackground,
          elevation: 0,
        ),
        backgroundColor: AppColor.primaryBackground,
        body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
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
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'convitnhodev',
                    style: TextStyle(
                        color: AppColor.primaryText,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                //const SizedBox(height: 12),
                TextButton(
                  onPressed: () {},
                  child: const Text('Edit Profile'),
                ),
                const SizedBox(height: 4),
                Card(
                  surfaceTintColor: Colors.white,
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: const [
                        Icon(Icons.manage_accounts, size: 30),
                        SizedBox(width: 12),
                        Text(
                          'Account',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Card(
                  surfaceTintColor: Colors.white,
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: const [
                        Icon(Icons.language, size: 30),
                        SizedBox(width: 12),
                        Text(
                          'Languages',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Card(
                  surfaceTintColor: Colors.white,
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: const [
                        Icon(Icons.manage_accounts, size: 30),
                        SizedBox(width: 12),
                        Text(
                          'Account',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Card(
                  surfaceTintColor: Colors.white,
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: const [
                        Icon(Icons.manage_accounts, size: 30),
                        SizedBox(width: 12),
                        Text(
                          'Account',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Card(
                  surfaceTintColor: Colors.white,
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: const [
                        Icon(Icons.manage_accounts, size: 30),
                        SizedBox(width: 12),
                        Text(
                          'Account',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Card(
                  surfaceTintColor: Colors.white,
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: const [
                        Icon(Icons.manage_accounts, size: 30),
                        SizedBox(width: 12),
                        Text(
                          'Account',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }
}
