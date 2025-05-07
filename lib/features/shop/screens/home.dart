import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_e_commerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_e_commerce/common/widgets/text/section_heading.dart';
import 'package:flutter_e_commerce/features/shop/screens/widgets/home_app_bar.dart';
import 'package:flutter_e_commerce/features/shop/screens/widgets/home_categories.dart';
import 'package:flutter_e_commerce/features/shop/screens/widgets/promo_slider.dart';
import 'package:flutter_e_commerce/utils/constants/colors.dart';
import 'package:flutter_e_commerce/utils/constants/image_strings.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //* AppBar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  //* SearchBar
                  TSearchContainer(text: 'Search in Store'),
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
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  //* Promo Slider
                  TPromoSlider(
                    banner: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),

                  //* Popular Products
                  TProductCardVertical(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
