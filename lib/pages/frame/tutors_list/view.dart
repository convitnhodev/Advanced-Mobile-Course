import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/style/color.dart';
import 'package:flutter_application_1/pages/frame/tutors_list/controller.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/common/const/size.dart';

class TutorCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: AppColor.primarySecondaryBackground,
      ),
      margin: const EdgeInsets.all(StandardDimension.borderRadiusForCard),
      clipBehavior: Clip.hardEdge,
      child: Column(
        children: [
          Container(
            child: Image.asset('lib/images/avatar.jpeg', fit: BoxFit.cover),
            height: 400,
            width: double.infinity,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.greenAccent,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List<Widget>.generate(
              5,
              (index) => const Icon(Icons.star, color: Colors.amber),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
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
                padding: const EdgeInsets.only(right: 8, left: 8),
                child: Image(
                  image: AssetImage('lib/images/vietnam.png'),
                  height: 22,
                  width: 22,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Wrap(
            spacing: 16,
            runSpacing: -4,
            children: List<Widget>.generate(
              3,
              (index) => Chip(
                backgroundColor: AppColor.primaryBackground,
                label: const Text(
                  'back-end',
                  style: TextStyle(fontSize: 14, color: AppColor.primaryText),
                ),
              ),
            ),
          ),
        ],
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

      body: PageView(
        children: [
          TutorCard(),
          TutorCard(),
          TutorCard(),
        ],
      ),

      // body: SingleChildScrollView(

      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.stretch,
      //     children: [

      // Card(
      //   margin: const EdgeInsets.all(24),
      //   elevation: 5,
      //   child: Padding(
      //     padding: const EdgeInsets.all(30),
      //     child: Column(
      //       children: [
      //         const Text(
      //           'Upcoming lession',
      //           style:
      //               TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      //         ),
      //         const SizedBox(
      //           height: 8,
      //         ),
      //         const Text(
      //           'Fri, 30 Sep 22 18:30-18:55',
      //           style: TextStyle(fontSize: 15),
      //         ),
      //         const SizedBox(
      //           height: 8,
      //         ),
      //         TextButton.icon(
      //             onPressed: () {},
      //             icon: const Icon(Icons.play_circle_outline_rounded),
      //             label: const Text('Enter lesson room'))
      //       ],
      //     ),
      //   ),
      // ),
      //   const Padding(
      //     padding: EdgeInsets.all(24),
      //     child: Text(
      //       "Recommended tutors",
      //       textAlign: TextAlign.center,
      //     ),
      //   ),
      //   Card(
      //     surfaceTintColor: Colors.white,
      //     elevation: 3.0,
      //     margin:
      //         const EdgeInsets.symmetric(vertical: 12, horizontal: 16.0),
      //     child: Padding(
      //       padding: const EdgeInsets.all(12.0),
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           Row(
      //             children: [
      //               InkWell(
      //                 onTap: () => {},
      //                 child: const CircleAvatar(
      //                   radius: 45,
      //                   backgroundImage:
      //                       AssetImage('lib/images/facebook.png'),
      //                 ),
      //               ),
      //               Expanded(
      //                 child: Padding(
      //                   padding: const EdgeInsets.symmetric(horizontal: 16),
      //                   child: Column(
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: [
      //                       InkWell(
      //                         onTap: () => {},
      //                         child: const Text(' hung thai',
      //                             style: TextStyle(
      //                               fontSize: 32,
      //                             )),
      //                       ),
      //                       const Text('hung ne',
      //                           style: TextStyle(fontSize: 16)),
      //                       Row(
      //                         children: List<Widget>.generate(
      //                           5,
      //                           (index) => const Icon(Icons.star,
      //                               color: Colors.amber),
      //                         ),
      //                       )
      //                     ],
      //                   ),
      //                 ),
      //               ),
      //               IconButton(
      //                 onPressed: () {},
      //                 icon: const Icon(
      //                   Icons.favorite_border,
      //                   color: Colors.blue,
      //                 ),
      //               )
      //             ],
      //           ),
      //           Wrap(
      //             spacing: 16,
      //             runSpacing: -4,
      //             children: List<Widget>.generate(
      //               3,
      //               (index) => Chip(
      //                 backgroundColor: Colors.lightBlue[50],
      //                 label: const Text(
      //                   'haha',
      //                   style: TextStyle(fontSize: 14, color: Colors.blue),
      //                 ),
      //               ),
      //             ),
      //           ),
      //           const Text('thang nay day ngu vc'),
      //           Align(
      //             alignment: Alignment.centerRight,
      //             child: OutlinedButton.icon(
      //               onPressed: () => {},
      //               icon: const Icon(Icons.edit_calendar),
      //               label: const Text('Book'),
      //             ),
      //           )
      //         ],
      //       ),
      //     ),
      //   ),
      //       ],
      //     ),
      //   ),
    );
  }
}
