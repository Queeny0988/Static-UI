import 'package:flutter/material.dart';

abstract final class AppColors {
  static const blush = Color(0xFFED5A75);
  static const background = Color(0xFFFFF7F7);
  static const ink = Color(0xFF34282D);
  static const muted = Color(0xFF8B7478);
  static const line = Color(0xFFF5CDD3);
  static const softPink = Color(0xFFFFECEF);
}

abstract final class AppTheme {
  static final light = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.background,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.blush,
      surface: AppColors.background,
    ),
    fontFamily: 'Arial',
    textTheme: const TextTheme(
      headlineSmall: TextStyle(
        color: AppColors.ink,
        fontWeight: FontWeight.w800,
        fontSize: 22,
      ),
      titleMedium: TextStyle(
        color: AppColors.ink,
        fontWeight: FontWeight.w700,
        fontSize: 16,
      ),
      bodyMedium: TextStyle(color: AppColors.muted, fontSize: 13),
    ),
  );
}
