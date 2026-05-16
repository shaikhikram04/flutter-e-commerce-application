import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/common/widgets/app_bar/app_bar.dart';
import 'package:flutter_e_commerce/common/widgets/brands/brand_card.dart';
import 'package:flutter_e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_e_commerce/common/widgets/text/section_heading.dart';
import 'package:flutter_e_commerce/features/shop/screens/brand/brand_products.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';
import 'package:get/route_manager.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Brand'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Heading
              const TSectionHeading(title: 'Brand', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Brands list
              TGridLayout(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder: (_, index) => TBrandCard(
                  showBorder: true,
                  onTab: () => Get.to(() => const BrandProducts()),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
