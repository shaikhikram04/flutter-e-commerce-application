import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/common/widgets/app_bar/app_bar.dart';
import 'package:flutter_e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_e_commerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_e_commerce/common/widgets/images/t_circular_image.dart';
import 'package:flutter_e_commerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:flutter_e_commerce/common/widgets/text/section_heading.dart';
import 'package:flutter_e_commerce/utils/constants/colors.dart';
import 'package:flutter_e_commerce/utils/constants/image_strings.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';
import 'package:flutter_e_commerce/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = THelperFunction.isDarkMode(context);

    return Scaffold(
      appBar: TAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [TCartCounterIcon(onPressed: () {})],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) => [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            floating: true,
            backgroundColor: THelperFunction.isDarkMode(context) ? TColors.black : TColors.white,
            expandedHeight: 440,
            flexibleSpace: Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  //* SearchBar
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const TSearchContainer(
                    text: 'Search in Store',
                    showBorder: true,
                    showBackground: false,
                    margin: EdgeInsets.zero,
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  //* Featured Brands
                  TSectionHeading(title: 'Featured Brands', onPressed: () {}),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),

                  TRoundedContainer(
                    padding: const EdgeInsets.all(TSizes.sm),
                    showBorder: true,
                    backgroundColor: Colors.transparent,
                    child: Row(
                      children: [
                        //* Icon
                        TCircularImage(
                          image: TImages.clothIcon,
                          overlayColor: dark ? TColors.white : TColors.black,
                          backgroundColor: Colors.transparent,
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems / 2),

                        //* Text
                        Column(
                          children: [
                            
                          ],
                        )

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
        body: Container(),
      ),
    );
  }
}
