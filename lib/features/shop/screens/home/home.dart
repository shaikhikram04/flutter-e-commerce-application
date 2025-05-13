import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_e_commerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_e_commerce/common/widgets/text/section_heading.dart';
import 'package:flutter_e_commerce/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:flutter_e_commerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:flutter_e_commerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:flutter_e_commerce/utils/constants/colors.dart';
import 'package:flutter_e_commerce/utils/constants/image_strings.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //* AppBar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  //* SearchBar
                  TSearchContainer(text: 'Search in Store', showBorder: false),
                  SizedBox(height: TSizes.spaceBtwSections),

                  //* Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        //? Heading
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),

                        //? Categories
                        THomeCategories(),
                      ],
                    ),
                  ),

                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TPromoSlider(banner: [TImages.promoBanner1, TImages.promoBanner2, TImages.promoBanner3]),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  //* Promo Slider
                  const SizedBox(height: TSizes.spaceBtwSections),

                  //* Heading
                  TSectionHeading(title: 'Popular Products', onPressed: () {}),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  //* Popular Products
                  TGridLayout(
                    itemCount: 5,
                    itemBuilder: (_, index) => const TProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
