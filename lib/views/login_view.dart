import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mazare3/constants/app_colors.dart';
import 'package:mazare3/controllers/farmer_or_customer_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'LoginOrSignup_view.dart';
import 'signup_view.dart';

class LoginCustomerView extends StatelessWidget {
  LoginCustomerView({Key? key}) : super(key: key);
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passCtrl = TextEditingController();
  final _controller = OnboardingFarmerOrCustomerController();
  AppColor appColor = AppColor();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: buildMyColumn(),
        ),
      ),
    );
  }

  buildMyColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        myOnBordingView(),
        buildMyField('Email', emailCtrl,
            Icon(Icons.email, color: appColor.textColor), false),
        buildMyField('Password', passCtrl,
            Icon(Icons.lock, color: appColor.textColor), true),
        buildMyLoginButton(),
        buildMyForgotLabel(),
        buildMyOR(),
        myOAUTHIcons(),
        SizedBox(),
      ],
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

  myOAUTHIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Divider(),
        InkWell(
          onTap: () {},
          child: const CircleAvatar(
            child: Icon(Icons.facebook),
          ),
        ),
        InkWell(
          onTap: () {},
          child: const CircleAvatar(
            child: Icon(Icons.facebook),
          ),
        ),
        InkWell(
          onTap: () {},
          child: CircleAvatar(
            child: Icon(Icons.facebook),
          ),
        ),
        Divider(),

        //const SizedBox(width: 6),
      ],
    );
  }

  buildMyLoginButton() {
    return MaterialButton(
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
    );
  }

  buildMyForgotLabel() {
    return InkWell(
      child: Text(
        'Forgot Your Password?',
        style: TextStyle(
          color: Colors.black54,
        ),
      ),
      onTap: () {},
    );
  }

  buildMyField(
      String label, TextEditingController textCtrl, Icon myIcon, bool secure) {
    return TextField(
      controller: textCtrl,
      decoration: InputDecoration(
          prefixIcon: myIcon,
          hintText: label,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: appColor.secondryColor),
              borderRadius: BorderRadius.circular(18.0)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(18))),
      obscureText: secure,
    );
  }

  buildMyOR() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Divider(
          color: appColor.primaryColor,
          thickness: 2,
        ),
        Text('or Login Using Social Media Account',
            style: TextStyle(color: Colors.black54)),
        const Divider(),
      ],
    );
  }
}

/*
  @override
  void dispose() {
    super.dispose();
    emailCtrl.dispose();
    passCtrl.dispose();
  }
*/

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
