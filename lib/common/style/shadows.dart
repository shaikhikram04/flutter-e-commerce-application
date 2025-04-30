import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/utils/constants/colors.dart';

class TShadowStyle {
  const TShadowStyle._();

  static final verticalProductShadow = BoxShadow(
    color: TColors.darkGrey.withValues(alpha: 0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );

  static final horizontalProductShadow = BoxShadow(
      color: TColors.darkGrey.withValues(alpha: 0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));
}
