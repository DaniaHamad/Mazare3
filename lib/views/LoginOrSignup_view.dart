import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mazare3/constants/app_colors.dart';
import 'package:mazare3/controllers/farmer_or_customer_controller.dart';
import 'package:mazare3/views/login_view.dart';
import 'package:mazare3/views/onboarding_customer_view.dart';
import 'package:mazare3/views/onboarding_farmer_view.dart';
import 'package:mazare3/views/signup_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FarmerOrCustomerView extends StatelessWidget {
  FarmerOrCustomerView({Key? key}) : super(key: key);
  final _controller = OnboardingFarmerOrCustomerController();
  AppColor appColor = AppColor();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: buildMyColumn(),
      ),
    );
  }

  buildMyColumn() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //
          myOnBordingView(),
          Text('Mazare3 \nRelax & Enjoy', style: bigText()),
          // Text(), some describtion with def text size
          const SizedBox(),
          loginSignupColumn(),
        ],
      ),
    );
  }

  myOnBordingView() {
    // **************************************
    return Column(
      children: [
        SizedBox(
          height: 300,
          child: PageView.builder(
              controller: _controller.pageController,
              onPageChanged: _controller.selectedPageIndex,
              itemCount: _controller.onboardingPages.length,
              itemBuilder: (context, index) {
                return Center(
                  child: SvgPicture.asset(
                    _controller.onboardingPages[index].imageAsset,
                  ),
                );
              }),
        ),
        mySmothPage(),
      ],
    );
  }

  mySmothPage() {
    return Center(
      child: SmoothPageIndicator(
        controller: _controller.pageController,
        count: _controller.onboardingPages.length,
        effect: WormEffect(
            dotHeight: 7.5,
            dotWidth: 7.5,
            spacing: 10,
            dotColor: Colors.grey,
            activeDotColor: appColor.primaryColor),
        onDotClicked: (index) => _controller.jumpToPage(index),
      ),
    );
  }

  bigText() {
    return const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 40,
        color: Color.fromARGB(255, 68, 67, 71));
  }

  loginSignupColumn() {
    return Column(
      children: [
        MaterialButton(
          onPressed: () {
            Get.to(LoginCustomerView());
          },
          color: appColor.primaryColor,
          minWidth: double.infinity,
          height: 60,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 0.5,
          child: Text(
            "Login",
            style: TextStyle(
                color: appColor.textSecColor,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 15),
        MaterialButton(
          onPressed: () {
            Get.to(SignupCustomerView());
          },
          minWidth: double.infinity,
          height: 60,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(color: appColor.primaryColor)),
          elevation: 0.5,
          child: Text(
            "Sign Up",
            style: TextStyle(
                color: appColor.textColor,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
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
      ..strokeWidth = 2; //size.width * 0.003750000
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
