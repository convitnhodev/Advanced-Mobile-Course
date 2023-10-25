

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/frame/tutors_list/controller.dart';
import 'package:get/get.dart';

class TutorsListPage extends GetView<TutorsListController> {
   const TutorsListPage({super.key});

  @override
 
  Widget build(BuildContext context) {
    return SingleChildScrollView( 

      
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            margin: EdgeInsets.all(24),
            elevation: 5, 
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Text(
                    'Upcoming lession', 
                    style: TextStyle(
                      fontSize: 25, 
                      fontWeight: FontWeight.bold
                    ),
                    
                    ),
                    SizedBox(
                      height: 8,
                    ), 
                  Text(
                    'Fri, 30 Sep 22 18:30-18:55', 
                    style: TextStyle(
                      fontSize: 15
                    ),
                    ),


                      SizedBox(
                      height: 8,
                    ), 
                  TextButton.icon(onPressed: () {}, 
                  icon:  Image.asset('lib/images/facebook.png', width: 24, height: 24,), 
                  label: Text('Enter lesson room'))
                ],
                
              ),
            ),

          ), 

          Padding(
            padding: const EdgeInsets.all(24),
            child: Text("Recommended tutors", textAlign: TextAlign.center,),
          ), 


          // Card(
          //   margin: EdgeInsets.all(24),
          //   elevation: 5, 
          //   child: Padding(
          //     padding: const EdgeInsets.all(16),
          //     child: Column(
          //       children: [
          //         Row(
          //           mainAxisSize: MainAxisSize.max,
          //           children: [
          //             CircleAvatar(
          //               child: Image.asset('lib/images/facebook.png', width: 24, height: 24),
                        
          //             ),
          //             SizedBox(
          //               width: 8,
          //             ) , 
          //             Expanded(
          //               child: Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Text(
          //                     'Keegan'
          //                   ), 
                                  
          //                   Row(
          //                     children: [
          //                        Image.asset('lib/images/facebook.png', width: 24, height: 24,), 
          //                        Text(
          //                         'France'
          //                        )
                                  
          //                     ],
          //                   )
          //                 ],
          //               ),
          //             ), 
          //             Image.asset('lib/images/facebook.png', width: 24, height: 24,), 
          //           ],
          //         )
          //       ],
          //     ),
          //   ),

          // )


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
                  child: CircleAvatar(
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
                          child: Text(' hung thai',
                              style: TextStyle(
                                fontSize: 32, 
                              )),
                        ),
                        Text('hung ne', style: const TextStyle(fontSize: 16)),
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
                  icon: Icon(
                     Icons.favorite_border,
                    color:  Colors.blue,
                  ),
                )
              ],
            ),
            Wrap(
              spacing: 4,
              runSpacing: -6,
              children: List<Widget>.generate(
                10,
                (index) => Chip(
                  backgroundColor: Colors.lightBlue[50],
                  label: Text(
                    'haha',
                    style: const TextStyle(fontSize: 14, color: Colors.blue),
                  ),
                ),
              ),
            ),
            Text('thang nay day ngu vc'),
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
      
    );
    
  }
}