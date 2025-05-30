import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/utils/theme/custom_theme.dart/text_theme.dart';

class IAppBarTheme {
  const IAppBarTheme._();

  static AppBarTheme lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    foregroundColor: Colors.transparent,
    iconTheme: const IconThemeData(color: Colors.black, size: 24),
    titleTextStyle: ITextTheme.lightTextTheme.headlineSmall,
    actionsIconTheme: const IconThemeData(color: Colors.black, size: 24),
  );

  static AppBarTheme darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    foregroundColor: Colors.transparent,
    iconTheme: const IconThemeData(color: Colors.black, size: 24),
    titleTextStyle: ITextTheme.darkTextTheme.headlineMedium,
    actionsIconTheme: const IconThemeData(color: Colors.white, size: 24),
  );
}
