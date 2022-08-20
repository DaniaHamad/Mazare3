import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mazare3/controllers/farmer_or_customer_controller.dart';
import 'package:mazare3/views/onboarding_customer_view.dart';
import 'package:mazare3/views/onboarding_farmer_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
              SizedBox(
                height: 300,
                child: PageView.builder(
                    controller: _controller.pageController,
                    onPageChanged: _controller.selectedPageIndex,
                    itemCount: _controller.onboardingPages.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                                _controller.onboardingPages[index].imageAsset),
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(height: 32),
              SmoothPageIndicator(
                controller: _controller.pageController,
                count: _controller.onboardingPages.length,
                effect: const WormEffect(
                    spacing: 16,
                    dotColor: Colors.grey,
                    activeDotColor: Colors.teal),
                onDotClicked: (index) => _controller.jumpToPage(index),
              ),
              
             SizedBox(height: 100),
             const Text('mazare3 is here to help farm owners and customers'),
SizedBox(height: 32),
             Container(
         padding: const EdgeInsets.symmetric(horizontal: 30),
         height: 60,
        width: 400,
            child: CustomPaint(
              size: Size(0, 0),
              painter: RPSCustomPainter(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () {
                        Get.to(OnboardingFarmerView());
                      },
                      child: const Text('Farm owner')),
                  TextButton(
                    onPressed: () {
                      Get.to(OnboardingCustomerView());
                    },
                    child: const Text('Customer'),
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

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Colors.white.withOpacity(1.0);
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
      ..strokeWidth = 2;//size.width * 0.003750000
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
    paint_1_fill.color = Color.fromARGB(255, 255, 255, 255).withOpacity(1.0);
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
    paint_2_stroke.color = Color(0xff2F8286).withOpacity(1.0);
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
