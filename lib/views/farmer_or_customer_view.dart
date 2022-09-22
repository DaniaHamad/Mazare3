import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mazare3/controllers/farmer_or_customer_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../routes/routes.dart';

class FarmerOrCustomerView extends StatelessWidget {
  const FarmerOrCustomerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = OnboardingFarmerOrCustomerController();
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(bottom: 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: PageView.builder(
                    controller: _controller.pageController,
                    onPageChanged: _controller.selectedPageIndex,
                    itemCount: _controller.onboardingPages.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(30.0),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF5F5F5),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                              _controller.onboardingPages[index].imageAsset),
                        ),
                      );
                    }),
              ),
              SmoothPageIndicator(
                controller: _controller.pageController,
                count: _controller.onboardingPages.length,
                effect: const WormEffect(
                    spacing: 16,
                    dotColor: Colors.grey,
                    activeDotColor: Colors.teal),
                onDotClicked: (index) => _controller.jumpToPage(index),
              ),
              const SizedBox(height: 50),
              const Text(
                'Mazare3',
                style: TextStyle(
                  color: Color(0xff858585),
                  fontSize: 25.0,
                ),
              ),
              const SizedBox(height: 15),
              const Center(
                child: Text(
                  'Mazare3 is here to help \nfarm owners and customers',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15.0, color: Color(0xffA6A6A6)),
                ),
              ),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.teal),
                  ),
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: (){_controller.goToView("farmer");},
                            child: const Center(
                              child: Text(
                                    'Farm owner',
                                    style: TextStyle(
                                        fontFamily: "Georgia", fontSize: 16.0,color: Colors.teal),
                                  ),
                            ),
                          ),
                        ),
                        const VerticalDivider(
                          color: Colors.teal,
                          thickness: 1,
                          endIndent: 4,
                          indent: 4,

                        ),
                        Expanded(
                          child: InkWell(
                            onTap: (){_controller.goToView("customer");},
                            child: const Center(
                              child: Text(
                                  'Customer',
                                  style:
                                      TextStyle(fontFamily: "Georgia", fontSize: 16.0,color: Colors.teal),
                                ),
                            ),
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

