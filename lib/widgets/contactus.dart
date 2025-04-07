import 'package:buzzchat_webapp/services/services.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Contact Us', style: TextStyle(fontSize: 20)),
        const SizedBox(height: 10),
        Text(
          '+917666210348',
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
        const SizedBox(height: 5),
        TextButton(
          onPressed: LinksServices().launchEmail,
          child: Text(
            'jayprakashjadhav7666@gmail.com',
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
