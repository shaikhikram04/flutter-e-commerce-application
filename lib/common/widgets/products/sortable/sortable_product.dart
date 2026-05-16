import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';

class TSortableProduct extends StatelessWidget {
  const TSortableProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
