import 'package:flutter/material.dart';

class MainInfo extends StatelessWidget {
  const MainInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset("assets/images/logo.png", width: 50),
                  SizedBox(width: 10),
                  Text(
                    'BuzzChat',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                "The Best App For Connecting with",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              Text(
                "Your Friends.",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              SizedBox(height: 10),
              const Text(
                "App version 1.0",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w200,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 700,
                child: Text(
                  "A real-time chat app designed for students and large communities. Easily manage personal and group conversations with instant messaging and smooth connectivity.",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.android, size: 30),
                        const SizedBox(width: 10),
                        Text(
                          'Download App',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: w / 2.6,
          width: w / 2.6,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).colorScheme.primary,
            image: DecorationImage(image: AssetImage("assets/images/main.png")),
          ),
        ),
      ],
    );
  }
}
