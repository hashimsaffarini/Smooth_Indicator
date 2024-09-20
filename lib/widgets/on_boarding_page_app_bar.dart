import 'package:flutter/material.dart';
import 'package:smooth_indicator/core/theming/styles.dart';

class OnBoardingPageAppBar extends StatelessWidget {
  const OnBoardingPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8,
        left: 21,
        right: 36,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/app_icon.png',
                width: 70,
                height: 70,
              ),
              const Text(
                'NotaLite',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Skip',
                  style: TextStyles.font20BlackRegular.copyWith(
                    color: Colors.black.withOpacity(0.800000011920929),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
