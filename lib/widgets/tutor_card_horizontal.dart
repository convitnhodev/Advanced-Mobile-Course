import 'package:flutter/material.dart';

import '../common/style/color.dart';

class TutorCardHorizontal extends StatefulWidget {
  const TutorCardHorizontal({super.key});

  @override
  State<TutorCardHorizontal> createState() => _TutorCardHorizontalState();
}

class _TutorCardHorizontalState extends State<TutorCardHorizontal> {
  bool _isFavorite = false;

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
                    splashColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        _isFavorite = !_isFavorite;
                      });
                    },
                    icon: Icon(
                      _isFavorite ? Icons.favorite : Icons.favorite_border_outlined,
                      color: _isFavorite ? Colors.red : AppColor.primaryBackground,
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
                      color: AppColor.whiteText,
                      fontSize: 20,
                      letterSpacing: 0.25,
                      fontWeight: FontWeight.bold,
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
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List<Widget>.generate(
                  5,
                  (index) => const Icon(Icons.star, color: Colors.amber),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Wrap(
              spacing: 12,
              runSpacing: -3,
              children: List<Widget>.generate(
                4,
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
