import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/utils/constants/colors.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';
import 'package:flutter_e_commerce/utils/devices/device_utility.dart';
import 'package:flutter_e_commerce/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Container(
      width: TDeviceUtils.getScreenWidth(),
      margin: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      padding: const EdgeInsets.all(TSizes.md),
      decoration: BoxDecoration(
        color: showBackground
            ? dark
                ? TColors.dark
                : TColors.light
            : Colors.transparent,
        borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
        border: showBorder ? Border.all(color: TColors.grey) : null,
      ),
      child: Row(
        children: [
          Icon(icon, color: TColors.darkerGrey),
          const SizedBox(width: TSizes.spaceBtwItems),
          Text(
            text,
            style: Theme.of(context).textTheme.bodySmall,
          )
        ],
      ),
    );
  }
}
