

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/frame/tutors_list/controller.dart';
import 'package:get/get.dart';

class SearchPage extends GetView<SearchController> {
   const SearchPage({super.key});

  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search'
        ),
              
      ),
      body: Container(),
    

    );
    
  }
}