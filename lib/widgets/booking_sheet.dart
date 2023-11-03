import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/style/color.dart';
import 'package:flutter_application_1/pages/frame/booking/booking_page.dart';

class BookingSheet extends StatelessWidget {
  const BookingSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text(
              'Available Date(s)',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColor.primaryText,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 24,
                crossAxisSpacing: 16,
                childAspectRatio: 3,
                children: List<Widget>.generate(
                  16,
                  (index) => TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: AppColor.primarySecondaryBackground,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      )
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => BookingPage(
                            date: 'Nov ${index+1}, 2023',
                          ),
                        ),
                      );
                    },
                    child: Text('Nov ${index+1}, 2023'),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
