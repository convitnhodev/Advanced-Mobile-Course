import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/style/color.dart';
import 'package:flutter_application_1/pages/frame/tutor_search_result/tutor_search_result_page.dart';

class TutorSearchPage extends StatefulWidget {
  const TutorSearchPage({super.key});

  @override
  State<TutorSearchPage> createState() => _TutorSearchPageState();
}

class _TutorSearchPageState extends State<TutorSearchPage> {
  final _nationalities = [
    'Any',
    'Foreign',
    'Native English',
    'Vietnamese',
  ];

  static const _learnTopics = [
    'English for kids',
    'English for Business',
    'Conversational',
  ];

  static const _testPreparations = [
    'STARTERS',
    'MOVERS',
    'FLYERS',
    'KET',
    'PET',
    'IELTS',
    'TOEFL',
    'TOEIC',
  ];

  final _specialties = [
    'All',
    ..._learnTopics,
    ..._testPreparations,
  ];

  int _chosenNationality = 0;
  int _chosenSpecialties = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Tutor'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColor.primaryBackground,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const TutorSearchResultPage(),
                ),
              );
            },
            child: const Text('SEARCH'),
          ),
        ],
      ),
      backgroundColor: AppColor.primaryBackground,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextField(
              style: TextStyle(
                color: AppColor.primaryText,
              ),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.primaryText, width: 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.primaryText, width: 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                hintText: "Tutor's Name",
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w200,
                  color: AppColor.primaryText,
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Nationality',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: AppColor.primaryText,
              ),
            ),
            const SizedBox(height: 4),
            Wrap(
              spacing: 8,
              runSpacing: -4,
              children: List<Widget>.generate(
                _nationalities.length,
                (index) => ChoiceChip(
                  backgroundColor: AppColor.primarySecondaryBackground,
                  selectedColor: Colors.lightBlue[100],
                  selected: _chosenNationality == index,
                  label: Text(
                    _nationalities[index],
                    style: TextStyle(
                      color: _chosenNationality == index ? Colors.blue[700] : AppColor.primaryText,
                    ),
                  ),
                  onSelected: (bool selected) {
                    setState(() {
                      _chosenNationality = index;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Specialty',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: AppColor.primaryText,
              ),
            ),
            const SizedBox(height: 4),
            Wrap(
              spacing: 8,
              runSpacing: -4,
              children: List<Widget>.generate(
                _specialties.length,
                (index) => ChoiceChip(
                  backgroundColor: AppColor.primarySecondaryBackground,
                  selectedColor: Colors.lightBlue[100],
                  selected: _chosenSpecialties == index,
                  label: Text(
                    _specialties[index],
                    style: TextStyle(
                      color: _chosenSpecialties == index ? Colors.blue[700] : AppColor.primaryText,
                    ),
                  ),
                  onSelected: (bool selected) {
                    setState(() {
                      _chosenSpecialties = index;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 32),
            TextButton(
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
                setState(() {
                  _chosenSpecialties = 0;
                  _chosenNationality = 0;
                });
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.refresh_outlined),
                  SizedBox(width: 12),
                  Text('Reset All Filters'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
