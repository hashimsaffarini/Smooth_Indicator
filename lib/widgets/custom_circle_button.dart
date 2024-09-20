import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_indicator/core/utils/app_colors.dart';

class CustomCircleButton extends StatelessWidget {
  const CustomCircleButton({super.key, required this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: AppColors.primaryColor,
        padding: const EdgeInsets.all(22),
      ),
      child: SvgPicture.asset(
        'assets/images/ArrowRight.svg',
        height: 16,
      ),
    );
  }
}
