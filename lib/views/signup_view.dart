import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mazare3/constants/app_colors.dart';
import 'LoginOrSignup_view.dart';
import 'login_view.dart';

class SignupCustomerView extends StatelessWidget {
  TextEditingController fNameCtrl = TextEditingController();
  TextEditingController lNameCtrl = TextEditingController();
  TextEditingController noCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passCtrl = TextEditingController();
  AppColor appColor = AppColor();
  SignupCustomerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              appIcon(),
              buildMyField(
                  'First Name',
                  fNameCtrl,
                  const Icon(Icons.account_circle, color: Colors.black54),
                  false),
              const SizedBox(height: 8),
              buildMyField(
                  'Last Name',
                  lNameCtrl,
                  const Icon(Icons.account_circle, color: Colors.black54),
                  false),
              const SizedBox(height: 8),
              buildMyField('Email', emailCtrl,
                  const Icon(Icons.email, color: Colors.black54), false),
              const SizedBox(height: 8),
              buildMyField('Password', passCtrl,
                  const Icon(Icons.lock, color: Colors.black54), true),
              const SizedBox(height: 18),
              buildMyCreateAccountButton(),
              const SizedBox(height: 30),
              buildMyOR(),
              const SizedBox(height: 18),
              myOAUTHIcons(),
            ]),
          ),
        ),
      ),
    );
  }

  appIcon() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Center(
              child: Icon(Icons.filter_vintage_rounded,
                  size: 100, color: appColor.primaryColor)),
          SizedBox(height: 10),
          Center(
            child: Text(
              'Mazar3',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Create Account',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

/*
  @override
  void dispose() {
    super.dispose();
    fNameCtrl.dispose();
    lNameCtrl.dispose();
    noCtrl.dispose();
    emailCtrl.dispose();
    passCtrl.dispose();
  }
  */
  buildMyCreateAccountButton() {
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
      child: const Text(
        "Create Account",
        style: TextStyle(
            color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }

  myOAUTHIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('_____'),
        InkWell(
          onTap: () {},
          child: const CircleAvatar(
            child: Icon(Icons.airplane_ticket),
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
            child: Icon(Icons.adjust_outlined),
          ),
        ),
        Text('_____'),
      ],
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
              borderSide: BorderSide(color: appColor.primaryColor),
              borderRadius: BorderRadius.circular(18.0)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(18))),
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
