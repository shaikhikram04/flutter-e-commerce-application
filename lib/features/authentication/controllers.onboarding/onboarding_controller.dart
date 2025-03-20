import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  //* variables
  final pageController = PageController();
  final currentPageIndex = 0.obs;

  //* update current index when page scrolled
  void updatePageIndicator(int index) => currentPageIndex.value = index;

  //* Jump to the specified dot selected page
  void dotNavigationClick(int index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  //* Update current page index and jump to the next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      // Get.to(LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      currentPageIndex.value = page;
      pageController.jumpToPage(page);
    }
  }

  //* Update current page index and jump to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
