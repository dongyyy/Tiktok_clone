import 'package:flutter/material.dart';

import 'constants/gaps.dart';
import 'constants/sizes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikTok Clone',
      theme: ThemeData(
        primaryColor: const Color(0xFFE9435A),
      ),
      home: Padding(
        padding: const EdgeInsets.all(
          Sizes.size14,
        ),
        child: Container(
          child: const Row(
            children: [
              Text('hello'),
              Gaps.h20,
              Text('hello'),
            ]
          ),
        ),
      ),
    );
  }
}
