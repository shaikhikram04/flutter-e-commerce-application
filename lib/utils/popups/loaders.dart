import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/utils/constants/colors.dart';
import 'package:flutter_e_commerce/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TLoaders {
  static hideSnackbar() =>
      ScaffoldMessenger.of(Get.context!).hideCurrentSnackBar();

  static customToast({required String message}) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        duration: const Duration(seconds: 3),
        content: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: THelperFunction.isDarkMode(Get.context!)
                ? TColors.darkerGrey.withValues(alpha: 0.9)
                : TColors.grey.withValues(alpha: 0.9),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
              child: Text(
            message,
            style: Theme.of(Get.context!).textTheme.labelLarge,
          )),
        ),
      ),
    );
  }

  static void successSnackbar(
      {required String title, String message = '', int duration = 3}) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        content: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Iconsax.check, color: TColors.white),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(Get.context!)
                        .textTheme
                        .titleLarge!
                        .apply(color: TColors.white),
                  ),
                  SizedBox(height: message.isNotEmpty ? 4 : 0),
                  Text(
                    message,
                    style: Theme.of(Get.context!)
                        .textTheme
                        .labelMedium!
                        .apply(color: TColors.white, heightDelta: -0.2),
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: TColors.primary,
        duration: Duration(seconds: duration),
        // margin: const EdgeInsets.all(10),
      ),
    );
  }

  static void warningSnackbar({required String title, String message = ''}) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        content: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Iconsax.warning_2, color: TColors.white),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(Get.context!)
                        .textTheme
                        .titleLarge!
                        .apply(color: TColors.white),
                  ),
                  SizedBox(height: message.isNotEmpty ? 4 : 0),
                  Text(
                    message,
                    style: Theme.of(Get.context!)
                        .textTheme
                        .labelMedium!
                        .apply(color: TColors.white, heightDelta: -0.2),
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.orange,
        duration: const Duration(seconds: 3),
        // margin: const EdgeInsets.all(10),
      ),
    );
  }

  static void errorSnackbar({required String title, String message = ''}) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        content: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Iconsax.warning_2, color: TColors.white),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(Get.context!)
                        .textTheme
                        .titleLarge!
                        .apply(color: TColors.white),
                  ),
                  SizedBox(height: message.isNotEmpty ? 4 : 0),
                  Text(
                    message,
                    style: Theme.of(Get.context!)
                        .textTheme
                        .labelMedium!
                        .apply(color: TColors.white, heightDelta: -0.2),
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.red.shade600,
        duration: const Duration(seconds: 3),
        // margin: const EdgeInsets.all(10),
      ),
    );
  }
}
