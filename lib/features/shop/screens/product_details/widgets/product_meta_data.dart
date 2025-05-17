import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_e_commerce/common/widgets/images/t_circular_image.dart';
import 'package:flutter_e_commerce/common/widgets/text/brand_title_with_verified_icon.dart';
import 'package:flutter_e_commerce/common/widgets/text/product_price_text.dart';
import 'package:flutter_e_commerce/common/widgets/text/product_title_text.dart';
import 'package:flutter_e_commerce/utils/constants/colors.dart';
import 'package:flutter_e_commerce/utils/constants/enums.dart';
import 'package:flutter_e_commerce/utils/constants/image_strings.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';
import 'package:flutter_e_commerce/utils/helpers/helper_functions.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //* Price & sale price
        Row(
          children: [
            //* sale tag
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withValues(alpha: 0.8),
              padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text(
                '25%',
                style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black, fontWeightDelta: 2),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),

            //* price tag
            Text(
              '\$250',
              style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            const TProductPriceText(price: '175', isLarge: true)
          ],
        ),
        const SizedBox(width: TSizes.spaceBtwItems / 1.5),

        //* Title
        const TProductTitleText(text: 'Green Nike Sport Shirt'),
        const SizedBox(width: TSizes.spaceBtwItems / 1.5),

        //* Stock status
        Row(
          children: [
            const TProductTitleText(text: 'Status'),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(width: TSizes.spaceBtwItems / 1.5),

        //* Brands
        Row(
          children: [
            TCircularImage(
              image: TImages.shoeIcon,
              width: 32,
              height: 32,
              overlayColor: dark ? TColors.white : TColors.black,
            ),
            const Flexible(child: TBrandTitleWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.medium)),
          ],
        ),
      ],
    );
  }
}
