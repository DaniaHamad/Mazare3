import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mazare3/controllers/onboarding_farmer_controller.dart';
import '../routes/routes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingFarmerView extends StatelessWidget {
  OnboardingFarmerView({Key? key}) : super(key: key);
  final _controller = OnboardingFarmerController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        margin: const EdgeInsets.all(30.0),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF5F5F5),
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
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff858585),
                      ),
                    ),
                    const SizedBox(height: 32),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 64.0),
                      child: Text(
                        _controller.onboardingPages[index].description,
                        textAlign: TextAlign.center,
                        style:
                            const TextStyle(fontSize: 18, color: Color(0xffA6A6A6)),
                      ),
                    ),
                    const SizedBox(height: 32),
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
                Get.toNamed(RoutesClass.getSignupWithRoute());
              },
              child: const Text(
                'Skip',
                style:
                    TextStyle(fontFamily: "Georgia", color: Color(0xffA6A6A6)),
              ),
            ),
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
                    backgroundColor: Colors.white,
                    elevation: 3,
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
