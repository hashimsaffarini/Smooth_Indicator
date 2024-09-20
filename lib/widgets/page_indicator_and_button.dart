import 'package:flutter/material.dart';
import 'package:smooth_indicator/core/utils/app_colors.dart';
import 'package:smooth_indicator/pages/home_page.dart';
import 'package:smooth_indicator/widgets/custom_circle_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicatorAndButton extends StatelessWidget {
  const PageIndicatorAndButton({
    super.key,
    required this.pageController,
    required this.currentPage,
    required this.totalPages,
  });

  final int currentPage;
  final int totalPages;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Row(
        children: [
          SmoothPageIndicator(
            count: totalPages,
            controller: pageController,
            effect: ExpandingDotsEffect(
              activeDotColor: AppColors.primaryColor,
              dotColor: currentPage == totalPages - 1
                  ? AppColors.primaryColor
                  : AppColors.primaryColor.withOpacity(0.5),
              dotHeight: 10,
              dotWidth: 12,
              spacing: 8,
            ),
            onDotClicked: (index) {
              pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
            },
          ),
          const Spacer(),
          CustomCircleButton(
            onPressed: () {
              if (currentPage == totalPages - 1) {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              }
              pageController.nextPage(
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
            },
          ),
        ],
      ),
    );
  }
}
