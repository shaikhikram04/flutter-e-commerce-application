import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:flutter_e_commerce/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:flutter_e_commerce/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:flutter_e_commerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:flutter_e_commerce/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:flutter_e_commerce/utils/constants/image_strings.dart';
import 'package:flutter_e_commerce/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          //* Horizontal Scrollable Page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: IImages.onBoardingImage1,
                title: ITexts.onBoardingTitle1,
                subTitle: ITexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: IImages.onBoardingImage2,
                title: ITexts.onBoardingTitle2,
                subTitle: ITexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: IImages.onBoardingImage3,
                title: ITexts.onBoardingTitle3,
                subTitle: ITexts.onBoardingSubTitle3,
              ),
            ],
          ),

          //* Skip Button
          const OnBoardingSkip(),

          //* Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          //* Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
