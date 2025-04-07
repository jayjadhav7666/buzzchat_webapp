import 'package:buzzchat_webapp/widgets/Divider.dart';
import 'package:buzzchat_webapp/widgets/featuresWidget.dart';
import 'package:buzzchat_webapp/widgets/screenshots_page.dart';
import 'package:flutter/material.dart';

class MobileHomepage extends StatelessWidget {
  const MobileHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: Image.asset('assets/images/logo.png'),
        ),
        title: Text('BuzzChat', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.download, color: Colors.white),
              label: Text(
                'Download',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Column(
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
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                  Text(
                    "Your Friends.",
                    style: TextStyle(
                      fontSize: 35,
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
              SizedBox(height: 40),
              Container(
                height: w / 1.2,
                width: w / 1.2,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).colorScheme.primary,
                  image: DecorationImage(
                    image: AssetImage("assets/images/main.png"),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              DividerLine(),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Features",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Featureswidget(
                ismobile: true,
                icon: Icons.info,
                title: "Easy to use",
                description:
                    "BuzzChat App is A Easy to use app where you can connect with each other",
              ),
              SizedBox(height: 20),
              Featureswidget(
                ismobile: true,
                icon: Icons.call,
                title: "Chat With Friends",
                description:
                    "BuzzChat App is A best for comunicating with friend anf family",
              ),
              SizedBox(height: 20),
              Featureswidget(
                ismobile: true,
                icon: Icons.video_call,
                title: "Audio & Video Call",
                description: "One to One & Group Audio Video Call",
              ),
              SizedBox(height: 20),
              Featureswidget(
                ismobile: true,
                icon: Icons.group,
                title: "Group Chat",
                description:
                    "BuzzChat App is A Easy to use app where you can connect with each other",
              ),
              SizedBox(height: 80),
              DividerLine(),
              SizedBox(height: 40),
              ScreenShortPage(),
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Made with ❤️ By Jayprakash Jadhav",
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
