import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/style/color.dart';
import 'package:flutter_application_1/pages/frame/detail_tutor/index.dart';
import 'package:flutter_application_1/pages/frame/tutors_list/controller.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/common/const/size.dart';

class TutorCard extends StatefulWidget {
  @override
  State<TutorCard> createState() => _TutorCardState();
}

class _TutorCardState extends State<TutorCard> {
  bool is_favorite = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: AppColor.primarySecondaryBackground,
        ),
        clipBehavior: Clip.hardEdge,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      child: Image.asset('lib/images/avatar.jpeg',
                          fit: BoxFit.cover),
                      height: 350,
                      width: double.infinity,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Colors.greenAccent,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            is_favorite = !is_favorite;
                            
                          });
                          
                        },
                        child:  Icon(
                          is_favorite ? Icons.favorite : Icons.favorite_border_outlined,
                          color:  is_favorite ?  Colors.red : AppColor.primaryBackground,
                          size: 48,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Text(
                        'convitnhodev',
                        style: TextStyle(
                            color: AppColor.primaryText,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
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
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(
                    5,
                    (index) => const Icon(Icons.star, color: Colors.amber),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Wrap(
                  spacing: 12,
                  runSpacing: -3,
                  children: List<Widget>.generate(
                    3,
                    (index) => const Chip(
                      backgroundColor: AppColor.primaryBackground,
                      label: Text(
                        'back-end',
                        style: TextStyle(
                            fontSize: 14, color: AppColor.primaryText),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TutorsListPage extends StatefulWidget {
  const TutorsListPage({super.key});

  @override
  State<TutorsListPage> createState() => _TutorsListPageState();
}

class _TutorsListPageState extends State<TutorsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tutors',
          style: TextStyle(color: AppColor.primaryText),
        ),
        backgroundColor: AppColor.primaryBackground,
        elevation: 0,
      ),
      backgroundColor: AppColor.primaryBackground,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              children: [
                TutorCard(),
                TutorCard(),
                TutorCard(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
            child: TextButton(
                style: TextButton.styleFrom(
                  minimumSize: const Size.fromHeight(48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                ),
                onPressed: () {
                  DetailTutorPage(); 
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.schedule),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Book this tutor')
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
