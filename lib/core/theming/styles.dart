import 'package:flutter/material.dart';
import 'package:smooth_indicator/core/theming/font_weight_helper.dart';

class TextStyles {
  static TextStyle font24BlackRegular = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeightHelper.regular,
    color: Colors.black,
  );
  static TextStyle font14BlackRegular = TextStyle(
    fontSize: 14,
    fontWeight: FontWeightHelper.regular,
    color: Colors.black.withOpacity(0.55),
  );
  static TextStyle font20BlackRegular = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeightHelper.regular,
    color: Colors.black,
  );
}
