import 'package:flutter/material.dart';
import 'package:smooth_indicator/core/theming/styles.dart';
import 'package:smooth_indicator/core/utils/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'Smooth Indicator',
          style: TextStyles.font24BlackRegular.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: const Center(
        child: Text('Home Page'),
      ),
    );
  }
}
