import 'package:flutter/material.dart';

class ScreenShortPage extends StatelessWidget {
  const ScreenShortPage({super.key});

  @override
  Widget build(BuildContext context) {
    var images = [
      "assets/images/1.photo.jpg",
      "assets/images/2.photo.jpg",
      "assets/images/3.photo.jpg",
      "assets/images/4.photo.jpg",
      "assets/images/6.photo.jpg",
      "assets/images/7.photo.jpg",
      "assets/images/8.photo.jpg",
    ];
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "ScreenShorts",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ],
        ),
        SizedBox(height: 40),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children:
                images
                    .map(
                      (e) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(e, width: 250),
                      ),
                    )
                    .toList(),
          ),
        ),
      ],
    );
  }
}
