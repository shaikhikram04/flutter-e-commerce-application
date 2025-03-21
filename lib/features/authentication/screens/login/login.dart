import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/common/style/spacing_styles.dart';
import 'package:flutter_e_commerce/utils/constants/colors.dart';
import 'package:flutter_e_commerce/utils/constants/image_strings.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';
import 'package:flutter_e_commerce/utils/constants/text_strings.dart';
import 'package:flutter_e_commerce/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppHeight,
          child: Column(
            children: [
              //* Logo, title & subtitle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                      dark ? TImages.lightAppLogo : TImages.darkAppLogo,
                    ),
                  ),
                  Text(
                    TTexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: TSizes.sm),
                  Text(
                    TTexts.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),

              //* Form
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: TSizes.spaceBtwSections),
                  child: Column(
                    children: [
                      //* Email
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: TTexts.email,
                        ),
                      ),
                      const SizedBox(height: TSizes.spaceBtwInputFields),

                      //* Password
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: TTexts.password,
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),
                      const SizedBox(height: TSizes.spaceBtwInputFields / 2),

                      //* Remember me & Forgot password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //* Remember me
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              const Text(TTexts.rememberMe),
                            ],
                          ),

                          //* Forgot password
                          TextButton(
                            onPressed: () {},
                            child: const Text(TTexts.forgotPassword),
                          ),
                        ],
                      ),

                      //* Sign In Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(TTexts.signIn),
                        ),
                      ),

                      const SizedBox(height: TSizes.spaceBtwItems),

                      //* Create Account Button
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: const Text(TTexts.createAccount),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //* Divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Divider(
                      color: dark ? TColors.darkGrey : TColors.grey,
                      thickness: 0.5,
                      indent: 60,
                      endIndent: 5,
                    ),
                  ),
                  Text(
                    TTexts.orSignInWith.capitalize!,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Flexible(
                    child: Divider(
                      color: dark ? TColors.darkGrey : TColors.grey,
                      thickness: 0.5,
                      indent: 5,
                      endIndent: 60,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              //* Footer
              Row(
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
                      onPressed: () {},
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
