import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mazare3/models/onboarding_info.dart';

class OnboardingFarmerOrCustomerController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController();

  forwardAction() {
    if (isLastPage) {
      jumpToPage(1);
    } else
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }

  jumpToPage(index){
    pageController.animateToPage(index,duration: 300.milliseconds, curve: Curves.ease);
  }


  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo('assets/onboarding_images/finding-the-right-farm.svg', '',
        ''),
    OnboardingInfo('assets/onboarding_images/for-sale-pana.svg', '',
        ''),
    OnboardingInfo('assets/onboarding_images/we-value-our-customers.svg', '',
        ''),
  ];
}
