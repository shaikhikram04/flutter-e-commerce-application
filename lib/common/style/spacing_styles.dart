import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';

class TSpacingStyle {
  const TSpacingStyle._();
  
  static const paddingWithAppBarHeight = EdgeInsets.only(
    top: TSizes.appBarHeight,
    left: TSizes.defaultSpace,
    right: TSizes.defaultSpace,
    bottom: TSizes.defaultSpace,
  );
}
