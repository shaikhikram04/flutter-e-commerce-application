import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/common/widgets/loaders/animation_loader.dart';
import 'package:flutter_e_commerce/utils/constants/colors.dart';
import 'package:flutter_e_commerce/utils/helpers/helper_functions.dart';
import 'package:get/route_manager.dart';

class TFullScreenLoader {
  static openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_) {
        return PopScope(
          canPop: false,
          child: Container(
            color: THelperFunction.isDarkMode(Get.context!)
                ? TColors.dark
                : TColors.white,
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 250),
                TAnimationLoaderWidget(text: text, animation: animation)
              ],
            ),
          ),
        );
      },
    );
  }

  static void stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
