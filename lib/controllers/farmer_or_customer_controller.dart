import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mazare3/models/Enumerations/user.dart';
import 'package:mazare3/models/onboarding_info.dart';
import 'package:mazare3/models/user_road.dart';

import '../routes/routes.dart';

class OnboardingFarmerOrCustomerController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController();

  forwardAction() {
    if (isLastPage) {
      jumpToPage(1);
    } else {
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    }
  }

  jumpToPage(index) {
    pageController.animateToPage(index,
        duration: 300.milliseconds, curve: Curves.ease);
  }

  goToView(viewName) {
    UserRoad userRoad = UserRoad.getInstance();
    switch (viewName) {
      case "farmer":
        userRoad.userType = User.FarmOwner;
        Get.toNamed(RoutesClass.getOnboardingFarmerRoute());
        break;
      case "customer":
        userRoad.userType = User.Customer;
        Get.toNamed(RoutesClass.getOnboardingCustomerRoute());
        break;
    }
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo(
        'assets/onboarding_images/finding-the-right-farm.svg', '', ''),
    OnboardingInfo('assets/onboarding_images/for-sale-pana.svg', '', ''),
    OnboardingInfo(
        'assets/onboarding_images/we-value-our-customers.svg', '', ''),
  ];
}
