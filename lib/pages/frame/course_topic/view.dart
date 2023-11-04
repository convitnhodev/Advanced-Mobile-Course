import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/course_topic_slide.dart';

import '../../../common/style/color.dart';

class CourseTopicPage extends StatefulWidget {
  const CourseTopicPage({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State<CourseTopicPage> createState() => _CourseTopicPageState();
}

class _CourseTopicPageState extends State<CourseTopicPage> {
  final _allTopics = [
    '1. Your favorite movie',
    '2. Your favorite TV show',
    '3. Film production',
    '4. The world of streaming',
  ];
  late int _currentTopicIndex = widget.index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryBackground,
      appBar: AppBar(
        backgroundColor: AppColor.primaryBackground,
        elevation: 0,
        title: const Text(
          'Topic Detail',
          style: TextStyle(color: AppColor.primaryText),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              IconButton(
                color: Colors.blue,
                disabledColor: Colors.grey[700],
                onPressed: _currentTopicIndex == 0
                    ? null
                    : () {
                        setState(() {
                          _currentTopicIndex -= 1;
                        });
                      },
                icon: const Icon(
                  Icons.arrow_back,
                ),
              ),
              Expanded(
                child: Text(
                  _allTopics[_currentTopicIndex],
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 17,
                    color: Colors.blue,
                  ),
                ),
              ),
              IconButton(
                color: Colors.blue,
                disabledColor: Colors.grey[700],
                onPressed: _currentTopicIndex >= _allTopics.length - 1
                    ? null
                    : () {
                        setState(() {
                          _currentTopicIndex += 1;
                        });
                      },
                icon: const Icon(
                  Icons.arrow_forward,
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: List<Widget>.generate(
                  6,
                  (index) => CourseTopicSlide(
                    index: index,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
