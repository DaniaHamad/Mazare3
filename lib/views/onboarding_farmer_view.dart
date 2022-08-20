import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mazare3/controllers/onboarding_farmer_controller.dart';
import 'login_farmer_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnboardingFarmerView extends StatelessWidget {
  OnboardingFarmerView({Key? key}) : super(key: key);
  final _controller = OnboardingFarmerController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(bottom: 80),
          child: 
            PageView.builder(
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
                        SizedBox(height: 32),
                        Text(
                          _controller.onboardingPages[index].title,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
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
                      ],
                    ),
                  );
                }
                
                ),
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
                  Get.to(LoginFarmerView());
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
            CustomPaint(
              size: Size(92, 92),
              painter: RPSCustomPainter(),
              child: IconButton(
                onPressed: _controller.forwardAction,
                icon: const Icon(Icons.keyboard_arrow_right_outlined),
                iconSize: 35,
                color: Colors.teal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Colors.white.withOpacity(1.0);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(size.width * 0.06521739, size.height * 0.02173913,
                size.width * 0.8695652, size.height * 0.8695652),
            bottomRight: Radius.circular(size.width * 0.1630435),
            bottomLeft: Radius.circular(size.width * 0.1630435),
            topLeft: Radius.circular(size.width * 0.1630435),
            topRight: Radius.circular(size.width * 0.1630435)),
        paint_0_fill);

    Paint paint_1_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_1_stroke.color = Color(0xff2F8286).withOpacity(1.0);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(size.width * 0.05706522, size.height * 0.01358696,
                size.width * 0.8858696, size.height * 0.8858696),
            bottomRight: Radius.circular(size.width * 0.1711957),
            bottomLeft: Radius.circular(size.width * 0.1711957),
            topLeft: Radius.circular(size.width * 0.1711957),
            topRight: Radius.circular(size.width * 0.1711957)),
        paint_1_stroke);

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color.fromARGB(255, 255, 255, 255).withOpacity(1.0);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(size.width * 0.05706522, size.height * 0.01358696,
                size.width * 0.8858696, size.height * 0.8858696),
            bottomRight: Radius.circular(size.width * 0.1711957),
            bottomLeft: Radius.circular(size.width * 0.1711957),
            topLeft: Radius.circular(size.width * 0.1711957),
            topRight: Radius.circular(size.width * 0.1711957)),
        paint_1_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
