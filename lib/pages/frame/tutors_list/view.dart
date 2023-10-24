

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/frame/tutors_list/controller.dart';
import 'package:get/get.dart';

class TutorsListPage extends GetView<TutorsListController> {
   const TutorsListPage({super.key});

  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tutor'
        ),
      ),
      drawer: Drawer(backgroundColor: Colors.black),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Card(
                elevation: 30,
                child: Column(
                  children: [
                    Text(
                      'Upcoming Lession', 
                      style: TextStyle(
                        fontSize: 30
                      ),
                    ), 
                    Text(
                      'Fri, 30 Sep 22 18:30 - 18:55', 
                    ), 
                    ElevatedButton(
                      onPressed: () {}, 
                      child: Row(
                        children: [
                        Icon(Icons.abc_outlined), 
                        Text(
                          'Enter lession room'
                        )
                        ],
                      )
                    )
                  ],
                ),
              ),
            ), 
            Column(
              children: [
                Text('Find a tutor'), 
                     TextField(), 
                           SizedBox(
                      height: 30,
                    ), 
              ],
            ), 

            const Padding(
                padding: EdgeInsets.all(9),
                child: SizedBox(
                  child: Divider(color: Colors.black),
                ),
              ), 

            Column(
              children: [
                Text(
                  'Recommended tutors'
                ), 
                Card(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          
                           IconButton(onPressed: () {}, icon: Image.asset('lib/images/facebook.png')),
                           Column(
                            children: [
                              Text(
                                'Keegan'
                              ), 
                              Row(
                                children: [
                                Icon(Icons.access_alarm)
                                ],
                              )
                            ],
                           ), 
                           Icon(Icons.heart_broken)
                        ],
                        
                      ), 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Test 1'), 
                          Text('Test 2'), 
                          Text('Text 3'),
                        ],
                      ), 

                      Row(
                        children: [
                          Card(
                            child: Text(
                              'I am a last year student at University of Scient. Currently, I work as a '
                            ),
                          )
                        ],
                      )

                    ],
                  ),
                )
              ],
            )

            
          ],
        ),
      ),
    );
  }
}