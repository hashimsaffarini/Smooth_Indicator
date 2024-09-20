import 'package:flutter/material.dart';
import 'package:smooth_indicator/pages/on_boarding_page.dart';

void main() {
  runApp(const SmoothIndicatorApp());
}

class SmoothIndicatorApp extends StatelessWidget {
  const SmoothIndicatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingPage(),
    );
  }
}
