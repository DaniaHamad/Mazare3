import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mazare3/models/onboarding_info.dart';
import '../routes/routes.dart';

class OnboardingCustomerController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController();

  forwardAction() {
    if (isLastPage) {
      Get.toNamed(RoutesClass.getSignupRoute());
    } else {
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    }
  }

  jumpToPage(index) {
    pageController.animateToPage(index,
        duration: 300.milliseconds, curve: Curves.ease);
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo(
        'assets/onboarding_images/finding-the-right-farm.svg',
        'FINDING THE RIGHT FARM',
        'Mazare3 helps you pick the right farm for you.'),
    OnboardingInfo('assets/onboarding_images/easy-payments.svg',
        'EASY PAYMENTS', 'Now paying for your farm is easier than ever.'),
    OnboardingInfo(
        'assets/onboarding_images/we-value-our-customers.svg',
        'WE VALUE OUR CUSTOMERS',
        'if you have any issues with a farm you booked we are here to help!'),
  ];
}
