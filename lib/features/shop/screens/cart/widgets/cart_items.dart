import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/common/widgets/products/cart/add_remove_button.dart';
import 'package:flutter_e_commerce/common/widgets/products/cart/cart_item.dart';
import 'package:flutter_e_commerce/common/widgets/text/product_price_text.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(
        height: TSizes.spaceBtwSections,
      ),
      itemCount: 3,
      itemBuilder: (_, index) => Column(
        children: [
          const TCartItem(),
          if (showAddRemoveButtons) ...[
            const SizedBox(height: TSizes.spaceBtwItems),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [SizedBox(width: 70), TProductQuantityWithAddRemoveButton()],
                ),
                TProductPriceText(price: '256')
              ],
            )
          ],
        ],
      ),
    );
  }
}
