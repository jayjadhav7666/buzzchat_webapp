import 'package:buzzchat_webapp/config/responsive_layout.dart';
import 'package:buzzchat_webapp/pages/mobile_homepage.dart';
import 'package:buzzchat_webapp/pages/web_homepage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(mobile: MobileHomepage(), web: WebHomePage());
  }
}
