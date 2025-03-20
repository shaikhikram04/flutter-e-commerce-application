import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';
import 'package:flutter_e_commerce/utils/devices/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: IDeviceUtils.getAppBarHeight(),
      right: ISizes.defaultSpace,
      child: TextButton(
        onPressed: () {},
        child: const Text('Skip'),
      ),
    );
  }
}
