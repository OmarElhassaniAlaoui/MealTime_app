import 'package:flutter/material.dart';
import 'package:meal_time_app/src/app/themes/app_palette.dart';

class AppThemes {
  AppThemes._();

  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppPalette.primarySwatch,
    useMaterial3: false,
  );

  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppPalette.primarySwatch,
    useMaterial3: false,
  );
}
