import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'farmer_or_customer_view.dart';
import 'signup_customer_view.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Row(
              children: [
                CustomPaint(
              size: Size(92, 92),
              painter: RPSCustomPainter(),
              child: IconButton(
                onPressed: () {Get.to(FarmerOrCustomerView());},
                icon: const Icon(Icons.keyboard_arrow_left_outlined),
                iconSize: 35,
                color: Colors.teal,
              ),
            ),
                const SizedBox(
                  width: 18,
                ),
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 38,
            ),
            buildMyField(
              'Example@gmail.com',
              emailCtrl,
              const Icon(Icons.email),
              false,
            ),
            const SizedBox(height: 12),
            buildMyField(
              'Password',
              passCtrl,
              const Icon(Icons.security),
              true,
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.grey,
                onSurface: Colors.black,
              ),
              onPressed: () {},
              child: const Text('forgot your password?'),
            ),
            const SizedBox(
              height: 30,
            ),
            MaterialButton(
                minWidth: 800,
                height: 50,
                color: Colors.teal.shade300,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)),
                child: const Text(
                  ' Log in ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {}),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Log in with one of the following options.',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            const SizedBox(
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.email),
                    label: Text("  Gmail   "),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal[300],
                      textStyle: TextStyle(fontSize: 15),
                    ),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.facebook),
                    label: Text("Facebook"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal[300],
                      textStyle: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
            Text(
              'OR',
              style: TextStyle(
                fontSize: 20,
                color: Colors.teal[300],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Do not have an account?',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.teal[300],
                    onSurface: Colors.teal[300],
                  ),
                  onPressed: () {
                    Get.to(SignupCustomerView());
                  },
                  child: const Text('sign up?'),
                ),
              ],
            ),
          ],
        ),
      ),
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

