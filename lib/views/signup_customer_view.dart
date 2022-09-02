import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/routes.dart';
import 'farmer_or_customer_view.dart';
import 'login_view.dart';

class SignupCustomerView extends StatelessWidget {
  TextEditingController fNameCtrl = TextEditingController();
  TextEditingController lNameCtrl = TextEditingController();
  TextEditingController noCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passCtrl = TextEditingController();

  SignupCustomerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  CustomPaint(
                    size: Size(92, 92),
                    painter: RPSCustomPainter(),
                    child: IconButton(
                      onPressed: () {
                        Get.toNamed(RoutesClass.getFarmerOrCustomerRoute());
                      },
                      icon: const Icon(Icons.keyboard_arrow_left_outlined),
                      iconSize: 35,
                      color: Colors.teal,
                    ),
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 20,
              ),
              buildMyField(
                'Enter your first name',
                fNameCtrl,
                const Icon(Icons.face),
                false,
              ),
              const SizedBox(height: 8),
              buildMyField(
                'Enter your last name',
                lNameCtrl,
                const Icon(Icons.face),
                false,
              ),
              const SizedBox(height: 8),
              buildMyField(
                'Enter your phone number',
                noCtrl,
                const Icon(Icons.phone),
                false,
              ),
              const SizedBox(height: 8),
              buildMyField(
                'Example@gmail.com',
                emailCtrl,
                const Icon(Icons.email),
                false,
              ),
              const SizedBox(height: 8),
              buildMyField(
                'Pick a strong password',
                passCtrl,
                const Icon(Icons.security),
                true,
              ),
              const SizedBox(height: 18),
              MaterialButton(
                  minWidth: 800,
                  height: 50,
                  color: Colors.teal.shade300,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  child: const Text(
                    ' Create Account ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {}),
            ],
          ),
        ),
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

  buildMyField(
      String label, TextEditingController textCtrl, Icon myIcon, bool secure) {
    return TextField(
      controller: textCtrl,
      decoration: InputDecoration(
        prefixIcon: myIcon,
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
      obscureText: secure,
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
