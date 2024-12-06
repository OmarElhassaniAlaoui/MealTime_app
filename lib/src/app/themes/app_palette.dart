import 'package:flutter/material.dart';

class AppPalette {
  AppPalette._();
  static const MaterialColor primarySwatch = MaterialColor(
    0xFFF58700,
    <int, Color>{
      0: Color(0xFFFFFAF5),
      100: Color(0xFFFFE4C2),
      200: Color(0xFFFFCD8F),
      300: Color(0xFFFFB65C),
      400: Color(0xFFFF9F29),
      500: Color(0xFFF58700),
      600: Color(0xFFC26B00),
      700: Color(0xFF8F4F00),
      800: Color(0xFF5C3300),
      900: Color(0xFF291600),
    },
  );

  // Secondary Swatch
  static const MaterialColor secondarySwatch = MaterialColor(
    0xFF33995B,
    <int, Color>{
      0: Color(0xFFFFFFFF),
      100: Color(0xFFD9F2E3),
      200: Color(0xFFB3E5C7),
      300: Color(0xFF8DD8AA),
      400: Color(0xFF40BF72),
      500: Color(0xFF33995B),
      600: Color(0xFF277244),
      700: Color(0xFF1A4D2E),
      800: Color(0xFF0D2617),
      900: Color(0xFF000000),
    },
  );
  // Grey Swatch
  static const MaterialColor greySwatch = MaterialColor(
    0xFF999999,
    <int, Color>{
      0: Color(0xFFFFFFFF),
      100: Color(0xFFE6E6E6),
      200: Color(0xFFCCCCCC),
      300: Color(0xFFB3B3B3),
      400: Color(0xFF999999),
      500: Color(0xFF999999),
      600: Color(0xFF666666),
      700: Color(0xFF4D4D4D),
      800: Color(0xFF333333),
      900: Color(0xFF1A1A1A),
    },
  );

  // Individual Colors
  static const Color successGreen = Color(0xFF329930);
  static const Color errorRed = Color(0xFFE55B48);
  static const Color black = Color(0xFF1A1A1A);
  static const Color white = Color(0xFFFFFFFF);
  static const Color backgroundColor = Color(0xFFFFFAF5);
}
