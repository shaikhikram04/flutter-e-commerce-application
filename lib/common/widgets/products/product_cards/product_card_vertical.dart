import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/common/style/shadows.dart';
import 'package:flutter_e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_e_commerce/common/widgets/images/t_rounded_image.dart';
import 'package:flutter_e_commerce/utils/constants/colors.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';
import 'package:flutter_e_commerce/utils/helpers/helper_functions.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkerGrey : TColors.white,
      ),
      child: Column(
        children: [
          //* Thumbnail, wishlist button, discount tag
          TRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                TRoundedImage(imageUrl: ''),
              ],
            ),
          ),

          //* Details
        ],
      ),
    );
  }
}
