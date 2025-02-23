import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/utils/theme/custom_theme.dart/app_bar_theme.dart';
import 'package:flutter_e_commerce/utils/theme/custom_theme.dart/bottom_sheet_theme.dart';
import 'package:flutter_e_commerce/utils/theme/custom_theme.dart/checkbox_theme.dart';
import 'package:flutter_e_commerce/utils/theme/custom_theme.dart/chip_theme.dart';
import 'package:flutter_e_commerce/utils/theme/custom_theme.dart/elevated_button_theme.dart';
import 'package:flutter_e_commerce/utils/theme/custom_theme.dart/outlined_button_theme.dart';
import 'package:flutter_e_commerce/utils/theme/custom_theme.dart/text_field_theme.dart';
import 'package:flutter_e_commerce/utils/theme/custom_theme.dart/text_theme.dart';

class IAppTheme {
  const IAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: ITextTheme.lightTextTheme,
    elevatedButtonTheme: IElevatedButtonTheme.lightElevatedButtonTheme,
    chipTheme: IChipTheme.lightChipTheme,
    inputDecorationTheme: ITextFieldTheme.lightInputDecorationTheme,
    appBarTheme: IAppBarTheme.lightAppBarTheme,
    checkboxTheme: ICheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: IBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: IOutlinedButtonTheme.lightOutlinedButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: ITextTheme.darkTextTheme,
    elevatedButtonTheme: IElevatedButtonTheme.darkElevatedButtonTheme,
    chipTheme: IChipTheme.darkChipTheme,
    inputDecorationTheme: ITextFieldTheme.darkInputDecorationTheme,
    appBarTheme: IAppBarTheme.darkAppBarTheme,
    checkboxTheme: ICheckboxTheme.darkCheckBoxTheme,
    bottomSheetTheme: IBottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: IOutlinedButtonTheme.darkOutlinedButtonTheme,
  );
}
