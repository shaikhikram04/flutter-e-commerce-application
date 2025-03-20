import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:flutter_e_commerce/utils/constants/colors.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';
import 'package:flutter_e_commerce/utils/devices/device_utility.dart';
import 'package:flutter_e_commerce/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = IHelperFunction.isDarkMode(context);

    return Positioned(
      bottom: IDeviceUtils.getBottomNevigationBarHeight() + 25,
      left: ISizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? IColors.light : IColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
