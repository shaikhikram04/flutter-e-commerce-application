import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/common/widgets/app_bar/app_bar.dart';
import 'package:flutter_e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Popular Products'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsGeometry.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Dropdown
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Sort by',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.sort),
                ),
                items: [
                  "Name",
                  "Higher Price",
                  "Lower Price",
                  "Best Selling",
                  "Newest Arrivals",
                  "Popularity",
                ]
                    .map((option) => DropdownMenuItem(
                          value: option,
                          child: Text(option),
                        ))
                    .toList(),
                onChanged: (value) {},
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Product list
              TGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const TProductCardVertical(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
