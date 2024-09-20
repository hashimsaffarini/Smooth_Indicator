import 'package:flutter/material.dart';
import 'package:smooth_indicator/widgets/on_boarding_page_app_bar.dart';

class OnBoardingPageViewBody extends StatelessWidget {
  const OnBoardingPageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        OnBoardingPageAppBar(),
      ],
    );
  }
}
