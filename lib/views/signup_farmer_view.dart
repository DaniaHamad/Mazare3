import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/routes.dart';
import 'farmer_or_customer_view.dart';
import 'login_view.dart';

class SignupFarmerView extends StatelessWidget {
  TextEditingController fNameCtrl = TextEditingController();
  TextEditingController lNameCtrl = TextEditingController();
  TextEditingController noCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passCtrl = TextEditingController();

  SignupFarmerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/photo1662218514.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SizedBox(
                        width: 41,
                        height: 41,
                        child: OutlinedButton(
                          onPressed: () {
                            Get.toNamed(RoutesClass.getFarmerOrCustomerRoute());
                          },
                          style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.white,
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              side: const BorderSide(
                                  width: 2, color: Colors.teal)),
                          child: const Icon(
                            Icons.keyboard_arrow_left_outlined,
                            color: Colors.teal,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(35.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      buildMyField(
                        'First Name',
                        fNameCtrl,
                        'Enter your first name',
                        const Icon(Icons.face),
                        false,
                      ),
                      const SizedBox(height: 8),
                      buildMyField(
                        'Last Name',
                        lNameCtrl,
                        'Enter your last name',
                        const Icon(Icons.face),
                        false,
                      ),
                      const SizedBox(height: 8),
                      buildMyField(
                        'Phone Number',
                        noCtrl,
                        'Enter your phone number',
                        const Icon(Icons.phone),
                        false,
                      ),
                      const SizedBox(height: 8),
                      buildMyField(
                        'Email',
                        emailCtrl,
                        'Example@gmail.com',
                        const Icon(Icons.email),
                        false,
                      ),
                      const SizedBox(height: 8),
                      buildMyField(
                        'Password',
                        passCtrl,
                        'Pick a strong password',
                        const Icon(Icons.key),
                        true,
                      ),
                      const SizedBox(height: 8),
                      Container(
                        //margin: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                        padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.file_upload_outlined),
                              color: Colors.teal.shade300,
                              iconSize: 40,
                            ),
                            const Text(
                              'Upload your goverment ID here',
                              style: TextStyle(color: Colors.black45),
                            ),
                            const Text(
                              '.png Max file size: 5 MB',
                              style: TextStyle(
                                  color: Colors.black26, fontSize: 12),
                            ),
                            Divider(
                              height: 20,
                              color: Colors.grey.shade400,
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0.0, 0.0, 240, 0.0),
                              child: Icon(Icons.insert_drive_file_outlined),
                            )
                          ],
                        ),
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
              ],
            ),
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

  buildMyField(String label, TextEditingController textCtrl, String hinttext,
      Icon myIcon, bool secure) {
    return TextField(
      controller: textCtrl,
      decoration: InputDecoration(
        hintText: hinttext,
        hintStyle: const TextStyle(
          fontSize: 15,
        ),
        suffixIcon: myIcon,
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
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
