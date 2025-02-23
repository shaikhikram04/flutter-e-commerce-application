import 'package:flutter/material.dart';

class ITextTheme {
  const ITextTheme._();

  static TextTheme lightTextTheme = TextTheme().copyWith(
    headlineLarge: TextStyle().copyWith(
      fontSize: 32,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle().copyWith(
      fontSize: 24,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: TextStyle().copyWith(
      fontSize: 18,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    titleLarge: TextStyle().copyWith(
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: TextStyle().copyWith(
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle().copyWith(
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    ),
    bodyLarge: TextStyle().copyWith(
      fontSize: 14,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: TextStyle().copyWith(
      fontSize: 14,
      color: Colors.black,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: TextStyle().copyWith(
      fontSize: 14,
      color: Colors.black.withValues(alpha: 0.5),
      fontWeight: FontWeight.w500,
    ),
    labelLarge: TextStyle().copyWith(
      fontSize: 12,
      color: Colors.black,
      fontWeight: FontWeight.normal,
    ),
    labelMedium: TextStyle().copyWith(
      fontSize: 12,
      color: Colors.black.withValues(alpha: 0.5),
      fontWeight: FontWeight.normal,
    ),
  );

  static TextTheme darkTextTheme = TextTheme().copyWith(
    headlineLarge: TextStyle().copyWith(
      fontSize: 32,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle().copyWith(
      fontSize: 24,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: TextStyle().copyWith(
      fontSize: 18,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
    titleLarge: TextStyle().copyWith(
      fontSize: 16,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: TextStyle().copyWith(
      fontSize: 16,
      color: Colors.white,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle().copyWith(
      fontSize: 16,
      color: Colors.white,
      fontWeight: FontWeight.w400,
    ),
    bodyLarge: TextStyle().copyWith(
      fontSize: 14,
      color: Colors.white,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: TextStyle().copyWith(
      fontSize: 14,
      color: Colors.white,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: TextStyle().copyWith(
      fontSize: 14,
      color: Colors.white.withValues(alpha: 0.5),
      fontWeight: FontWeight.w500,
    ),
    labelLarge: TextStyle().copyWith(
      fontSize: 12,
      color: Colors.white,
      fontWeight: FontWeight.normal,
    ),
    labelMedium: TextStyle().copyWith(
      fontSize: 12,
      color: Colors.white.withValues(alpha: 0.5),
      fontWeight: FontWeight.normal,
    ),
  );
}
