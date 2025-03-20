import 'package:flutter/material.dart';

class IBottomSheetTheme {
  const IBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetTheme = const BottomSheetThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
    ),
    showDragHandle: true,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: BoxConstraints(minWidth: double.infinity),
  );

  static BottomSheetThemeData darkBottomSheetTheme = const BottomSheetThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
    ),
    showDragHandle: true,
    backgroundColor: Colors.black,
    modalBackgroundColor: Colors.black,
    constraints: BoxConstraints(minWidth: double.infinity),
  );
}
