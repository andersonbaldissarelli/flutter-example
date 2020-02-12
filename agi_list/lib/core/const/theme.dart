import 'dart:ui';
import 'package:flutter/material.dart';

class Colors {
  const Colors();

  static const Color splashGradientStart = const Color(0xFF008890);
  static const Color splashGradientEnd = const Color(0xFFa1ccb8);

  static const primaryGradient = const LinearGradient(
    colors: const [splashGradientStart, splashGradientEnd],
    stops: const [1.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
