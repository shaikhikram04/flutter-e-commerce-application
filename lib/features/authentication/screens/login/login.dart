import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/common/style/spacing_styles.dart';
import 'package:flutter_e_commerce/common/widgets/login_signup/form_divider.dart';
import 'package:flutter_e_commerce/common/widgets/login_signup/social_buttons.dart';
import 'package:flutter_e_commerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:flutter_e_commerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';
import 'package:flutter_e_commerce/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppHeight,
          child: Column(
            children: [
              //* Logo, title & subtitle
              const TLoginHeader(),

              //* Form
              const TLoginForm(),

              //* Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              //* Footer
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
