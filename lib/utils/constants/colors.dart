import 'package:flutter/material.dart';

class TColors {
  const TColors._();

  //* app basic colors
  static const Color primary = Color(0xFF4B68FF);
  static const Color secondary = Color(0xFFFFE24B);
  static const Color tertiary = Color(0xFFB0C7FF);

  //* Gradient colors
  static const Gradient linearGredient = LinearGradient(
    begin: Alignment(0, 0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xffff9a9e),
      Color(0xfffad0c4),
      Color(0xfffad0c4),
    ],
  );

  //* text colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textWhite = Color(0xFFFFFFFF);

  //* background colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  //* background container colors
  static const Color lightContainer = Color(0xFFf6f6f6);
  static Color darkContainer = const Color(0xFF272727).withValues(alpha: 0.1);

  //* button colors
  static const Color buttonPrimary = Color(0xFF4B68FF);
  static const Color buttonSecondary = Color(0xFF6c757d);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  //* border colors
  static const Color borderPrimary = Color(0xFFd9d9d9);
  static const Color borderSecondary = Color(0xFFe6e6e6);

  //* error & validation colors
  static const Color error = Color(0xFFd32f2f);
  static const Color success = Color(0xFF388e3c);
  static const Color warning = Color(0xFFf57c00);
  static const Color info = Color(0xFF1976d2);

  //* neutral shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4f4f4f);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFf4f4f4);
  static const Color lightGrey = Color(0xFFf9f9f9);
  static const Color white = Color(0xFFffffff);
}
