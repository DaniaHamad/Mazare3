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
              const Padding(
                padding: EdgeInsets.only(left:80.0,right:80.0),
                child:  Text(
                  'Mazare3 is here to help farm owners and customers',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15.0,color: Color(0xffA6A6A6)),
                ),
              ),
              const SizedBox(height: 32),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                height: 60,
                width: 400,
                child: CustomPaint(
                  size: const Size(0, 0),
                  painter: RPSCustomPainter(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                          onPressed: () {
                            Get.toNamed(RoutesClass.getOnboardingCustomerRoute());
                          },
                          child: const Text(
                            'Customer',
                            style: TextStyle(
                              fontFamily: "Georgia",
                              fontSize: 16.0
                            ),
                            )
                            ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed(RoutesClass.getOnboardingFarmerRoute());
                        },
                        child: const Text(
                          'Farm owner',
                          style: TextStyle(
                              fontFamily: "Georgia",
                              fontSize: 16.0
                            ),),
                      )
                    ],
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


class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Colors.transparent.withOpacity(1.0);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(size.width * 0.02000000, size.height * 0.08000000,
                size.width * 0.9600000, size.height * 0.8400000),
            bottomRight: Radius.circular(size.width * 0.03750000),
            bottomLeft: Radius.circular(size.width * 0.03750000),
            topLeft: Radius.circular(size.width * 0.03750000),
            topRight: Radius.circular(size.width * 0.03750000)),
        paint_0_fill);

    Paint paint_1_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4; //size.width * 0.003750000
    paint_1_stroke.color = Color(0xff2F8286).withOpacity(1.0);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(size.width * 0.01812500, size.height * 0.07250000,
                size.width * 0.9637500, size.height * 0.8550000),
            bottomRight: Radius.circular(size.width * 0.03937500),
            bottomLeft: Radius.circular(size.width * 0.03937500),
            topLeft: Radius.circular(size.width * 0.03937500),
            topRight: Radius.circular(size.width * 0.03937500)),
        paint_1_stroke);

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = const Color(0xfffafafa).withOpacity(1.0);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(size.width * 0.01812500, size.height * 0.07250000,
                size.width * 0.9637500, size.height * 0.8550000),
            bottomRight: Radius.circular(size.width * 0.03937500),
            bottomLeft: Radius.circular(size.width * 0.03937500),
            topLeft: Radius.circular(size.width * 0.03937500),
            topRight: Radius.circular(size.width * 0.03937500)),
        paint_1_fill);

    Paint paint_2_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_2_stroke.color = const Color(0xff2F8286).withOpacity(1.0);
    canvas.drawLine(
        Offset(size.width * 0.5012500, size.height * 0.2000000),
        Offset(size.width * 0.5012500, size.height * 0.7900000),
        paint_2_stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
