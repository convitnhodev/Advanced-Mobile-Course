import 'package:flutter/material.dart';

class CourseTopicSlide extends StatelessWidget {
  const CourseTopicSlide({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Image.asset('lib/images/topic_page_0${index + 1}.jpg'),
    );
  }
}
