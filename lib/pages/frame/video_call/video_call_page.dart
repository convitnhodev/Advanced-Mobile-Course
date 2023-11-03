import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/style/color.dart';

class VideoCallPage extends StatefulWidget {
  const VideoCallPage({super.key});

  @override
  State<VideoCallPage> createState() => _VideoCallPageState();
}

class _VideoCallPageState extends State<VideoCallPage> {
  bool _isMicrophoneEnabled = false;
  bool _isCameraEnabled = false;

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
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Material(
              color: AppColor.primarySecondaryBackground,
              borderRadius: BorderRadius.circular(16),
              child: Row(
                children: [
                  Expanded(
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          _isMicrophoneEnabled = !_isMicrophoneEnabled;
                        });
                      },
                      icon: Icon(
                        _isMicrophoneEnabled ? Icons.mic_rounded : Icons.mic_off_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          _isCameraEnabled = !_isCameraEnabled;
                        });
                      },
                      icon: Icon(
                        _isCameraEnabled ? Icons.videocam : Icons.videocam_off,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.chat_bubble_outline,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.screen_share_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.fullscreen_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_horiz_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  minimumSize: const Size.fromHeight(44),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  )),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Icon(
                Icons.call_end,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
