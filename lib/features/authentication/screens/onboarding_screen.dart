import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/utils/constants/image_strings.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';
import 'package:flutter_e_commerce/utils/constants/text_strings.dart';
import 'package:flutter_e_commerce/utils/helpers/helper_functions.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //* Horizontal Scrollable Page
          PageView(
            children: [
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
          )

          //* Skip Button

          //* Dot Navigation SmoothPageIndicator

          //* Circular Button
        ],
      ),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(ISizes.defaultSpace),
      child: Column(
        children: [
          Lottie.asset(
            image,
            width: IHelperFunction.screenWidth() * 0.8,
            height: IHelperFunction.screenHeight() * 0.6,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: ISizes.spaceBtwItems),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
