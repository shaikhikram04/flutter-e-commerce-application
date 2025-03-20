import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:flutter_e_commerce/utils/constants/colors.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';
import 'package:flutter_e_commerce/utils/devices/device_utility.dart';
import 'package:flutter_e_commerce/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = IHelperFunction.isDarkMode(context);

    return Positioned(
      right: ISizes.defaultSpace,
      bottom: IDeviceUtils.getBottomNevigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? IColors.primary : Colors.black,
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
