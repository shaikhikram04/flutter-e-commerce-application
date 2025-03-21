import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/common/style/spacing_styles.dart';
import 'package:flutter_e_commerce/utils/constants/image_strings.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';
import 'package:flutter_e_commerce/utils/constants/text_strings.dart';
import 'package:flutter_e_commerce/utils/helpers/helper_functions.dart';
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
                    ITexts.loginSubTitle  ,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),

              //* Form
              Form(
                child: Column(
                  children: [
                    //* Email
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.direct_right),
                        labelText: ITexts.email,
                      ),
                    ),

                    //* Password
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
