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
    final dark = IHelperFunction.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ISpacingStyle.paddingWithAppHeight,
          child: Column(
            children: [
              //* Logo, title & subtitle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                      dark ? IImages.lightAppLogo : IImages.darkAppLogo,
                    ),
                  ),
                  Text(
                    ITexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: ISizes.sm),
                  Text(
                    ITexts.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),

              //* Form
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: ISizes.spaceBtwSections),
                  child: Column(
                    children: [
                      //* Email
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: ITexts.email,
                        ),
                      ),
                      const SizedBox(height: ISizes.spaceBtwInputFields),

                      //* Password
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: ITexts.password,
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),
                      const SizedBox(height: ISizes.spaceBtwInputFields / 2),

                      //* Remember me & Forgot password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //* Remember me
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              const Text(ITexts.rememberMe),
                            ],
                          ),

                          //* Forgot password
                          TextButton(
                            onPressed: () {},
                            child: const Text(ITexts.forgotPassword),
                          ),
                        ],
                      ),

                      //* Sign In Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(ITexts.signIn),
                        ),
                      ),

                      const SizedBox(height: ISizes.spaceBtwItems),

                      //* Create Account Button
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: const Text(ITexts.createAccount),
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
                      color: dark ? IColors.darkGrey : IColors.grey,
                      thickness: 0.5,
                      indent: 60,
                      endIndent: 5,
                    ),
                  ),
                  Text(
                    ITexts.orSignInWith.capitalize!,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Flexible(
                    child: Divider(
                      color: dark ? IColors.darkGrey : IColors.grey,
                      thickness: 0.5,
                      indent: 5,
                      endIndent: 60,
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
