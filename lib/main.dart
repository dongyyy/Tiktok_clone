import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main_navigation/main_navigation_screen.dart';

void main() {
  runApp(const TikTokApp());
}

class TikTokApp extends StatelessWidget {
  const TikTokApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'TikTok Clone',
      home: MainNavigationScreen(),
    );
  }
}
