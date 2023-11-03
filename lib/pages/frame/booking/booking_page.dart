import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/style/color.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key, required this.date});

  final String date;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryBackground,
        elevation: 0,
        title: Text(
          date,
          style: const TextStyle(
            color: AppColor.primaryText,
          ),
        ),
      ),
      backgroundColor: AppColor.primaryBackground,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 24,
        ),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 3,
          children: List<Widget>.generate(
            14,
            (index) => TextButton(
              onPressed: () async {
                await showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    backgroundColor: AppColor.primaryBackground,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    title: const Text(
                      'Book This Tutor?',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: AppColor.primaryText,
                      ),
                    ),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          'Lesson starts at',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: AppColor.primaryText,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          '18:00 - 18:25',
                          style: TextStyle(
                            color: AppColor.secondaryText,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Nov 4, 2023',
                          style: TextStyle(
                            color: AppColor.secondaryText,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Note',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: AppColor.primaryText,
                          ),
                        ),
                        const SizedBox(height: 9),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: TextField(
                            minLines: 3,
                            maxLines: 4,
                            style: const TextStyle(
                              color: AppColor.primaryText,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Your requests for the tutor',
                              hintStyle: const TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.grey,
                              ),
                              contentPadding: const EdgeInsets.all(12),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: AppColor.primaryText,
                                  ),
                                  borderRadius: BorderRadius.circular(16)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: AppColor.primaryText,
                                  ),
                                  borderRadius: BorderRadius.circular(16)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'CANCEL',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          )),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('BOOK'),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('18:00 - 18:25'),
            ),
          ),
        ),
      ),
    );
  }
}
