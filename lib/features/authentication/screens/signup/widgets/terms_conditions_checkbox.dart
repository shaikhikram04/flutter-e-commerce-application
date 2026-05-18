import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/features/authentication/controllers/signup/signup_controller.dart';
import 'package:flutter_e_commerce/utils/constants/colors.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';
import 'package:flutter_e_commerce/utils/constants/text_strings.dart';
import 'package:flutter_e_commerce/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class TTermsAndConditionsCheckBox extends StatelessWidget {
  const TTermsAndConditionsCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    final controller = SignupController.instance;

    return Row(
      spacing: TSizes.spaceBtwItems,
      children: [
        SizedBox.square(
          dimension: 24,
          child: Obx(() => Checkbox(
                value: controller.privacyPolicy.value,
                onChanged: (value) => controller.privacyPolicy.toggle(),
              )),
        ),
        Expanded(
          child: Text.rich(TextSpan(
            children: [
              TextSpan(
                text: '${TTexts.isAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: TTexts.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? TColors.white : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? TColors.white : TColors.primary,
                    ),
              ),
              TextSpan(
                text: ' ${TTexts.and} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: TTexts.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? TColors.white : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? TColors.white : TColors.primary,
                    ),
              ),
            ],
          )),
        ),
      ],
    );
  }
}
