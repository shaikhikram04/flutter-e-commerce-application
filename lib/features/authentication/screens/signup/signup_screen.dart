import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/common/widgets/login_signup/form_divider.dart';
import 'package:flutter_e_commerce/common/widgets/login_signup/social_buttons.dart';
import 'package:flutter_e_commerce/utils/constants/colors.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';
import 'package:flutter_e_commerce/utils/constants/text_strings.dart';
import 'package:flutter_e_commerce/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //* Title
              Text(TTexts.signUpTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),

              //* Form
              Form(
                child: Column(
                  children: [
                    Row(
                      spacing: TSizes.spaceBtwInputFields,
                      children: [
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                              labelText: TTexts.firstName,
                              prefixIcon: Icon(Iconsax.user),
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                              labelText: TTexts.lastName,
                              prefixIcon: Icon(Iconsax.user),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),

                    //* username
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: TTexts.username,
                        prefixIcon: Icon(Iconsax.user_edit),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),

                    //* email
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: TTexts.email,
                        prefixIcon: Icon(Iconsax.direct),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),

                    //* phone number
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: TTexts.phoneNumber,
                        prefixIcon: Icon(Iconsax.call),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),

                    //* password
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: TTexts.username,
                        prefixIcon: Icon(Iconsax.password_check),
                        suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),

                    //* Terms & conditions Checkbox
                    Row(
                      spacing: TSizes.spaceBtwItems,
                      children: [
                        SizedBox.square(
                          dimension: 24,
                          child: Checkbox(
                            value: false,
                            onChanged: (value) {},
                          ),
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
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .apply(
                                      color: dark
                                          ? TColors.white
                                          : TColors.primary,
                                      decoration: TextDecoration.underline,
                                      decorationColor: dark
                                          ? TColors.white
                                          : TColors.primary,
                                    ),
                              ),
                              TextSpan(
                                text: ' ${TTexts.and} ',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              TextSpan(
                                text: TTexts.termsOfUse,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .apply(
                                      color: dark
                                          ? TColors.white
                                          : TColors.primary,
                                      decoration: TextDecoration.underline,
                                      decorationColor: dark
                                          ? TColors.white
                                          : TColors.primary,
                                    ),
                              ),
                            ],
                          )),
                        ),
                      ],
                    ),

                    const SizedBox(height: TSizes.spaceBtwSections),

                    //* Sign-up button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(TTexts.createAccount)),
                    )
                  ],
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              //* Divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              //* social button
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
