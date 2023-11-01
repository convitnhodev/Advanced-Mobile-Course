import 'package:flutter/material.dart';

import '../common/style/color.dart';

class TutorCard extends StatefulWidget {
  const TutorCard({super.key});

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
          children: [
            Stack(
              children: [
                Container(
                  height: 350,
                  width: double.infinity,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.greenAccent,
                  ),
                  child: Image.asset(
                    'lib/images/avatar.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 10,
                  child: IconButton(
                    style: IconButton.styleFrom(
                      foregroundColor: Colors.red,
                    ),
                    onPressed: () {
                      setState(() {
                        is_favorite = !is_favorite;
                      });
                    },
                    icon: Icon(
                      is_favorite ? Icons.favorite : Icons.favorite_border_outlined,
                      color: is_favorite ? Colors.red : AppColor.primaryBackground,
                      size: 40,
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
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  'Viet Nam',
                  style: TextStyle(
                    color: AppColor.primaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
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
                      fontSize: 14,
                      color: AppColor.primaryText,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
