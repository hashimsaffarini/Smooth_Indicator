import 'package:flutter/material.dart';
import 'package:smooth_indicator/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      children: const [
        PageViewItem(
          imageUrl: 'assets/images/boarding1.png',
          title: 'Welcome to NotaLite!',
          description:
              'Start your journey towards enhanced productivity with NotaLite! Our intuitive task management app helps you stay organized and focused.',
        ),
        PageViewItem(
          imageUrl: 'assets/images/OBJECTS.png',
          title: 'Effortless Management',
          description:
              'Say goodbye to overwhelming to-do lists and hello to effortless task management! With NotaLite, you can easily add, prioritize, and track your tasks with just a few taps.',
        ),
      ],
    );
  }
}
