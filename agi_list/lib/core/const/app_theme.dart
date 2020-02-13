import 'dart:ui';
import 'package:agi_list/core/const/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {

  static const Color splashGradientStart = AppColors.greenDark;
  static const Color splashGradientEnd = AppColors.greenLight;

  static const primaryGradient = const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                splashGradientEnd,
                splashGradientStart
              ],
              stops: [0.0, 1.0],
              tileMode: TileMode.repeated,
            );
}
