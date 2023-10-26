

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/frame/tutors_list/controller.dart';
import 'package:get/get.dart';


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
        title: Text(
          'Tutors'
        )
              
      ),
      body: SingleChildScrollView( 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              margin: const EdgeInsets.all(24),
              elevation: 5, 
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    const Text(
                      'Upcoming lession', 
                      style: TextStyle(
                        fontSize: 25, 
                        fontWeight: FontWeight.bold
                      ),
                      
                      ),
                      const SizedBox(
                        height: 8,
                      ), 
                    const Text(
                      'Fri, 30 Sep 22 18:30-18:55', 
                      style: TextStyle(
                        fontSize: 15
                      ),
                      ),
    
    
                        const SizedBox(
                        height: 8,
                      ), 
                    TextButton.icon(onPressed: () {}, 
                    icon:  const Icon(Icons.play_circle_outline_rounded),
                    label: const Text('Enter lesson room'))
                  ],
                  
                ),
              ),
    
            ), 
    
            const Padding(
              padding: EdgeInsets.all(24),
              child: Text("Recommended tutors", textAlign: TextAlign.center,),
            ), 
    
    
    
            Card(
        surfaceTintColor: Colors.white,
        elevation: 3.0,
        margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () => {},
                    child: const CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage('lib/images/facebook.png'),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () => {},
                            child: const Text(' hung thai',
                                style: TextStyle(
                                  fontSize: 32, 
                                )),
                          ),
                          const Text('hung ne', style: TextStyle(fontSize: 16)),
                          Row(
                            children: List<Widget>.generate(
                              5,
                              (index) => const Icon(Icons.star, color: Colors.amber),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                       Icons.favorite_border,
                      color:  Colors.blue,
                    ),
                  )
                ],
              ),
              Wrap(
                spacing: 16,
                runSpacing: -4,
                children: List<Widget>.generate(
                  3,
                  (index) => Chip(
                    backgroundColor: Colors.lightBlue[50],
                    label: const Text(
                      'haha',
                      style: TextStyle(fontSize: 14, color: Colors.blue),
                    ),
                  ),
                ),
              ),
              const Text('thang nay day ngu vc'),
              Align(
                alignment: Alignment.centerRight,
                child: OutlinedButton.icon(
                  onPressed: () => {},
                  icon: const Icon(Icons.edit_calendar),
                  label: const Text('Book'),
                ),
              )
            ],
          ),
        ),
      ), 
          
            
          ],
        ),
        
      ),
    );
    
  }
}