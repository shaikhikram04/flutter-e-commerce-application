import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/features/authentication/controllers/onboarding/onboarding_controller.dart';
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
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
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
