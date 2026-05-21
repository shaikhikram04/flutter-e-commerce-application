import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/features/authentication/controllers/login/login_controller.dart';
import 'package:flutter_e_commerce/utils/constants/colors.dart';
import 'package:flutter_e_commerce/utils/constants/image_strings.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';
import 'package:get/get.dart';

class TSocialButtons extends StatelessWidget {
  const TSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: TColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: controller.googleSignIn,
            icon: Image.asset(
              TImages.google,
              height: TSizes.iconMd,
              width: TSizes.iconMd,
            ),
          ),
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: TColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              TImages.facebook,
              height: TSizes.iconMd,
              width: TSizes.iconMd,
            ),
          ),
        ),
      ],
    );
  }
}
