import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/common/widgets/app_bar/app_bar.dart';
import 'package:flutter_e_commerce/common/widgets/app_bar/tab_bar.dart';
import 'package:flutter_e_commerce/common/widgets/brands/brand_card.dart';
import 'package:flutter_e_commerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_e_commerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:flutter_e_commerce/common/widgets/text/section_heading.dart';
import 'package:flutter_e_commerce/features/shop/screens/store/widgets/category_tab.dart';
import 'package:flutter_e_commerce/utils/constants/colors.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';
import 'package:flutter_e_commerce/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
              expandedHeight: 400,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    //* SearchBar
                    const SizedBox(height: TSizes.spaceBtwItems / 2),
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

                    TGridLayout(
                      itemCount: 4,
                      mainAxisExtent: 80,
                      itemBuilder: (_, index) => const TBrandCard(showBorder: false),
                    ),
                  ],
                ),
              ),

              //* Tabs
              bottom: const TTabBar(
                tabs: [
                  Tab(child: Text('Sports')),
                  Tab(child: Text('Furniture')),
                  Tab(child: Text('Electronics')),
                  Tab(child: Text('Cloths')),
                  Tab(child: Text('Cosmetics')),
                ],
              ),
            ),
          ],
          body: const TabBarView(
            children: [
              TCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
