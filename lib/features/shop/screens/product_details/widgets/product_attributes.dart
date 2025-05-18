import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/common/widgets/chips/choice_chip.dart';
import 'package:flutter_e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_e_commerce/common/widgets/text/product_price_text.dart';
import 'package:flutter_e_commerce/common/widgets/text/product_title_text.dart';
import 'package:flutter_e_commerce/common/widgets/text/section_heading.dart';
import 'package:flutter_e_commerce/utils/constants/colors.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';
import 'package:flutter_e_commerce/utils/helpers/helper_functions.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Column(
      children: [
        //* Selected Attribute pricing & description
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          padding: const EdgeInsets.all(TSizes.md),
          child: Column(
            children: [
              //* Title, Price & Stock Status
              Row(
                children: [
                  const TSectionHeading(title: 'Variation', showActionButton: false),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(text: 'Price : ', smallSize: true),
                          //* Actual Price
                          Text(
                            '\$25',
                            style:
                                Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems),

                          //* Sale Price
                          const TProductPriceText(price: '20'),
                        ],
                      ),
                      Row(
                        children: [
                          const TProductTitleText(text: 'Stock : ', smallSize: true),
                          Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
                        ],
                      )
                    ],
                  ),
                ],
              ),

              //* Variation Description
              const TProductTitleText(
                text: 'This is the description of the Product and it can go upto max 4 lines.',
                smallSize: true,
                maxLine: 4,
              )
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        //* Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Colors'),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: TSizes.spaceBtwItems / 2,
              children: [
                TChoiceChip(text: 'Green', isSelected: true, onSelected: (value) {}),
                TChoiceChip(text: 'Blue', isSelected: false, onSelected: (value) {}),
                TChoiceChip(text: 'Yellow', isSelected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Sizes'),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: TSizes.spaceBtwItems / 2,
              children: [
                TChoiceChip(text: 'EU 34', isSelected: true, onSelected: (value) {}),
                TChoiceChip(text: 'EU 36', isSelected: false, onSelected: (value) {}),
                TChoiceChip(text: 'EU 38', isSelected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
