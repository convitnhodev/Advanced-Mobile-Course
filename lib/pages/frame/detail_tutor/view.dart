import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/style/color.dart';
import 'package:flutter_application_1/pages/frame/tutors_list/controller.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/common/const/size.dart';

class DetailTutorPage extends StatefulWidget {
  const DetailTutorPage({super.key});

  @override
  State<DetailTutorPage> createState() => _DetailTutorPageState();
}

class _DetailTutorPageState extends State<DetailTutorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detail',
          style: TextStyle(color: AppColor.primaryText),
        ),
        backgroundColor: AppColor.primaryBackground,
        elevation: 0,
      ),
      backgroundColor: AppColor.primaryBackground,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('lib/images/avatar.jpeg'),
                  radius: 44,
                ),
                const SizedBox(
                  width: 36,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'convitnhodev',
                      style: TextStyle(
                          color: AppColor.primaryText,
                          fontSize: 24,
                          fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Row(
                      children: [
                        Text(
                          'Viet Nam',
                          style: TextStyle(
                              color: AppColor.primaryText,
                              fontSize: 14,
                              fontWeight: FontWeight.w300),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 16, left: 8),
                          child: Image(
                            image: AssetImage('lib/images/vietnam.png'),
                            height: 22,
                            width: 22,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List<Widget>.generate(
                        5,
                        (index) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 20,
                        ),
                      )..add(
                          const Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                              '80',
                              style: TextStyle(
                                  color: AppColor.primaryText,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Column(
                    children: [
                      Icon(
                        Icons.favorite_border_outlined,
                        size: 28,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text('Favorite')
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Column(
                    children: [
                      Icon(
                        Icons.report_outlined,
                        size: 28,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text('Report')
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Column(
                    children: [
                      Icon(
                        Icons.reviews_outlined,
                        size: 28,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text('Reviews')
                    ],
                  ),
                ),
              ],
            ),
            Container(
               margin: const EdgeInsets.symmetric(vertical: 20),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColor.primarySecondaryBackground,
              ),
              clipBehavior: Clip.hardEdge,
             
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(
                        color: AppColor.primaryText,
                        fontSize: 20,
                        letterSpacing: 0.4,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'I’m a last-year BS student in Software Engineering with a passion for technology and system architectures. I’m skilled in programming languages such as C++, Java, Python and Golang, and experienced in Agile and Waterfall methodologies.',
                    style: TextStyle(
                        color: AppColor.primaryText,
                        fontSize: 15.5,
                        height: 1.37,
                        fontWeight: FontWeight.w300),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
