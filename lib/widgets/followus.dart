import 'package:buzzchat_webapp/services/services.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Followus extends StatelessWidget {
  const Followus({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Follow Us', style: TextStyle(fontSize: 20)),
        Row(
          children: [
            IconButton(
              onPressed: LinksServices().launchLinkedIn,
              icon: Icon(FontAwesomeIcons.linkedin, size: 30),
            ),
            IconButton(
              onPressed: LinksServices().launchInstagram,
              icon: Icon(FontAwesomeIcons.instagram, size: 30),
            ),
          ],
        ),
      ],
    );
  }
}
