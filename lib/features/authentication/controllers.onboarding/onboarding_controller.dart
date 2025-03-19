import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  //* variables

  //* update current index when page scrolled
  void updatePageIndicator(int index) {}

  //* Jump to the specified dot selected page
  void dotNavigationClick(int index) {}

  //* Update current page index and jump to the next page
  void nextPage() {}

  //* Update current page index and jump to the last page
  void skipPage() {}
}
