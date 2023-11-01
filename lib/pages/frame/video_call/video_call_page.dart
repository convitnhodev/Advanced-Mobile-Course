import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/style/color.dart';

class VideoCallPage extends StatelessWidget {
  const VideoCallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Video Call',
          style: TextStyle(color: AppColor.primaryText),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColor.primaryBackground,
      ),
      backgroundColor: AppColor.primaryBackground,
    );
  }
}
