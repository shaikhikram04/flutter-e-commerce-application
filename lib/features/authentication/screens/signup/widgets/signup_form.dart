import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/features/authentication/controllers/signup/signup_controller.dart';
import 'package:flutter_e_commerce/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';
import 'package:flutter_e_commerce/utils/constants/text_strings.dart';
import 'package:flutter_e_commerce/utils/validator/validator.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          //* first name & last name
          Row(
            spacing: TSizes.spaceBtwInputFields,
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firseName,
                  validator: (value) =>
                      TValidator.validateEmptyText(TTexts.firstName, value),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) =>
                      TValidator.validateEmptyText(TTexts.lastName, value),
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
            controller: controller.username,
            validator: (value) =>
                TValidator.validateEmptyText(TTexts.username, value),
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          //* email
          TextFormField(
            controller: controller.email,
            validator: (value) => TValidator.validateEmail(value),
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          //* phone number
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => TValidator.validatePhoneNumber(value),
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.phoneNumber,
              prefixIcon: Icon(Iconsax.call),
            ),
            keyboardType: TextInputType.phone,
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          //* password
          Obx(() => TextFormField(
                controller: controller.password,
                validator: (value) => TValidator.validatePassord(value),
                obscureText: controller.hidePassword.value,
                decoration: InputDecoration(
                  labelText: TTexts.password,
                  prefixIcon: const Icon(Iconsax.password_check),
                  suffixIcon: IconButton(
                    icon: Icon(controller.hidePassword.value
                        ? Iconsax.eye_slash
                        : Iconsax.eye),
                    onPressed: () => controller.hidePassword.toggle(),
                  ),
                ),
              )),
          const SizedBox(height: TSizes.spaceBtwSections),

          //* Terms & conditions Checkbox
          const TTermsAndConditionsCheckBox(),
          const SizedBox(height: TSizes.spaceBtwSections),

          //* Sign-up button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.signup(),
              child: const Text(TTexts.createAccount),
            ),
          )
        ],
      ),
    );
  }
}
