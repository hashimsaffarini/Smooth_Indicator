import 'package:flutter/material.dart';
import 'package:smooth_indicator/core/theming/styles.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
  });
  final String imageUrl;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imageUrl,
          ),
          const SizedBox(height: 70),
          Text(
            title,
            style: TextStyles.font24BlackRegular.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyles.font14BlackRegular,
            ),
          ),
        ],
      ),
    );
  }
}
