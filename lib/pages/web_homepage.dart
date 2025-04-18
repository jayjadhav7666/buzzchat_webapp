import 'package:buzzchat_webapp/controller/appcontroller.dart';
import 'package:buzzchat_webapp/widgets/Divider.dart';
import 'package:buzzchat_webapp/widgets/contactus.dart';
import 'package:buzzchat_webapp/widgets/featuresWidget.dart';
import 'package:buzzchat_webapp/widgets/followus.dart';
import 'package:buzzchat_webapp/widgets/mainInfo.dart';
import 'package:buzzchat_webapp/widgets/screenshots_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WebHomePage extends StatelessWidget {
  const WebHomePage({super.key});

  @override
  Widget build(BuildContext context) {
     AppController appController = Get.put(AppController());
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
              onPressed: () {
                appController.downloadApk();
              },
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
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              MainInfo(),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Featureswidget(
                    icon: Icons.info,
                    title: "Easy to use",
                    description:
                        "BuzzChat App is A Easy to use app where you can connect with each other",
                  ),
                  Featureswidget(
                    icon: Icons.call,
                    title: "Chat With Friends",
                    description:
                        "BuzzChat App is A best for comunicating with friend and family",
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Featureswidget(
                    icon: Icons.video_call,
                    title: "Audio & Video Call",
                    description: "One to One & Group Audio Video Call",
                  ),
                  Featureswidget(
                    icon: Icons.group,
                    title: "Group Chat",
                    description:
                        "BuzzChat App is A Easy to use app where you can connect with each other",
                  ),
                ],
              ),
              SizedBox(height: 80),
              DividerLine(),
              SizedBox(height: 40),
              ScreenShortPage(),
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Made with ❤️ By Jayprakash Jadhav",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ContactUs(),
                          const SizedBox(width: 90),
                          Followus(),
                        ],
                      ),
                    ],
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
