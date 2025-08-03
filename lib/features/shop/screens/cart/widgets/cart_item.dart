import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/common/widgets/images/t_rounded_image.dart';
import 'package:flutter_e_commerce/common/widgets/text/brand_title_with_verified_icon.dart';
import 'package:flutter_e_commerce/common/widgets/text/product_title_text.dart';
import 'package:flutter_e_commerce/utils/constants/colors.dart';
import 'package:flutter_e_commerce/utils/constants/image_strings.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';
import 'package:flutter_e_commerce/utils/helpers/helper_functions.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //* Image
        TRoundedImage(
          imageUrl: TImages.clothIcon,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: THelperFunction.isDarkMode(context) ? TColors.darkerGrey : TColors.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems),

        //* Title, price & size
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const TBrandTitleWithVerifiedIcon(title: 'Nike'),
              const TProductTitleText(text: 'Black T-Shirt', maxLine: 1),
              //* Attributes
              Text.rich(TextSpan(children: [
                TextSpan(text: 'Color: ', style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: 'Black', style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(text: 'Size: ', style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: 'M', style: Theme.of(context).textTheme.bodyLarge),
              ])),
            ],
          ),
        ),
      ],
    );
  }
}
