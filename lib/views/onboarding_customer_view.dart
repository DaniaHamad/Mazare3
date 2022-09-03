import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mazare3/controllers/onboarding_customer_controller.dart';
import 'package:mazare3/routes/routes.dart';
import 'login_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingCustomerView extends StatelessWidget {
  OnboardingCustomerView({Key? key}) : super(key: key);
  final _controller = OnboardingCustomerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(bottom: 100),
          child: PageView.builder(
              controller: _controller.pageController,
              onPageChanged: _controller.selectedPageIndex,
              itemCount: _controller.onboardingPages.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(30.0),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F5F5),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            _controller.onboardingPages[index].imageAsset,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      _controller.onboardingPages[index].title,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 32),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 64.0),
                      child: Text(
                        _controller.onboardingPages[index].description,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    SizedBox(height: 32),
                  ],
                );
              }),
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: () {
                  Get.toNamed(RoutesClass.getLoginRoute());
                },
                child: const Text('SKIP')),
            Center(
              child: SmoothPageIndicator(
                controller: _controller.pageController,
                count: _controller.onboardingPages.length,
                effect: const WormEffect(
                    spacing: 16,
                    dotColor: Colors.grey,
                    activeDotColor: Colors.teal),
                onDotClicked: (index) => _controller.jumpToPage(index),
              ),
            ),
            SizedBox(
              width: 35,
              height: 35,
              child: OutlinedButton(
                onPressed: _controller.forwardAction,
                style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    side: const BorderSide(width: 2, color: Colors.teal)),
                child: const Icon(
                  Icons.keyboard_arrow_right_outlined,
                  color: Colors.teal,
                  size: 35,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
