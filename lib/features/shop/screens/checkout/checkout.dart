import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/common/widgets/app_bar/app_bar.dart';
import 'package:flutter_e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_e_commerce/common/widgets/products/cart/coupon_widget.dart';
import 'package:flutter_e_commerce/common/widgets/success_screen/success_screen.dart';
import 'package:flutter_e_commerce/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:flutter_e_commerce/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:flutter_e_commerce/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:flutter_e_commerce/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:flutter_e_commerce/navigation_menu.dart';
import 'package:flutter_e_commerce/utils/constants/colors.dart';
import 'package:flutter_e_commerce/utils/constants/image_strings.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';
import 'package:flutter_e_commerce/utils/helpers/helper_functions.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Scaffold(
      appBar: TAppBar(
        title: Text('Order Review',
            style: Theme.of(context).textTheme.headlineSmall),
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
                  spacing: TSizes.spaceBtwItems,
                  children: [
                    //* Pricing
                    TBillingAmountSection(),

                    //* Divider
                    Divider(),

                    //* payment method
                    TBillingPaymentSection(),

                    //* Address
                    TBillingAddressSection(),
                  ],
                ))
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          bottom: TSizes.defaultSpace,
          left: TSizes.defaultSpace,
          right: TSizes.defaultSpace,
        ),
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => SuccessScreen(
              image: TImages.successfulPaymentIcon,
              title: 'Payment Successful!',
              subTitle: 'Your Item will be shipped soon.',
              onPressed: () => Get.offAll(() => const NavigationMenu()),
            ),
          ),
          child: const Text('Checkout \$256.0'),
        ),
      ),
    );
  }
}
