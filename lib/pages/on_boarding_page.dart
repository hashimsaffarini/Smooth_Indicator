import 'package:flutter/material.dart';
import 'package:smooth_indicator/widgets/on_boarding_page_view_body.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: OnBoardingPageViewBody(),
      ),
    );
  }
}
