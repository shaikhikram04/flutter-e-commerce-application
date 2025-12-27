import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/common/widgets/app_bar/app_bar.dart';
import 'package:flutter_e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_e_commerce/common/widgets/products/cart/coupon_widget.dart';
import 'package:flutter_e_commerce/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:flutter_e_commerce/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:flutter_e_commerce/utils/constants/colors.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';
import 'package:flutter_e_commerce/utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Scaffold(
      appBar: TAppBar(
        title: Text('Order Review', style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            //* Items in the cart
            const TCartItems(
              showAddRemoveButtons: false,
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            //* Coupon code input
            const TCouponCode(),
            const SizedBox(height: TSizes.spaceBtwSections),

            //* Billing section
            TRoundedContainer(
                showBorder: true,
                backgroundColor: dark ? TColors.black : TColors.white,
                padding: const EdgeInsets.all(TSizes.md),
                child: const Column(
                  children: [
                    //* Pricing
                    TBillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    //* Divider
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    //* payment method
                    //* Address
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
