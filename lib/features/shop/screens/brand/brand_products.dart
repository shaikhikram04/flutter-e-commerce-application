import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/common/widgets/app_bar/app_bar.dart';
import 'package:flutter_e_commerce/common/widgets/brands/brand_card.dart';
import 'package:flutter_e_commerce/common/widgets/products/sortable/sortable_product.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(title: Text('Acer')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Brand Details
              TBrandCard(showBorder: true),
              SizedBox(height: TSizes.spaceBtwSections),

              // Product list
              TSortableProduct(),
            ],
          ),
        ),
      ),
    );
  }
}
