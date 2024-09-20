import 'package:flutter/material.dart';
import 'package:smooth_indicator/widgets/on_boarding_page_app_bar.dart';
import 'package:smooth_indicator/widgets/on_boarding_page_view.dart';
import 'package:smooth_indicator/widgets/page_indicator_and_button.dart';

class OnBoardingPageViewBody extends StatefulWidget {
  const OnBoardingPageViewBody({super.key});

  @override
  State<OnBoardingPageViewBody> createState() => _OnBoardingPageViewBodyState();
}

class _OnBoardingPageViewBodyState extends State<OnBoardingPageViewBody> {
  late PageController pageController;
  var currentPage = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const OnBoardingPageAppBar(),
        Expanded(
          child: OnBoardingPageView(
            controller: pageController,
          ),
        ),
        PageIndicatorAndButton(
          currentPage: currentPage,
          pageController: pageController,
          totalPages: 2,
        ),
        const SizedBox(height: 36),
      ],
    );
  }
}
