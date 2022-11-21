import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mazare3/controllers/login_controller.dart';
import '../routes/routes.dart';
import 'signup_view.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passCtrl = TextEditingController();

  final _controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 20),
          child: OutlinedButton(
            onPressed: () {
              Get.toNamed(RoutesClass.getFarmerOrCustomerRoute());
            },
            style: OutlinedButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                side: const BorderSide(width: 2, color: Colors.teal)),
            child: const Icon(
              Icons.keyboard_arrow_left_outlined,
              color: Colors.teal,
              size: 25,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Icon(
              Icons.photo,
              color: Colors.grey.shade300,
              size: 100,
            ),
            const SizedBox(
              height: 38,
            ),
            buildMyField(
              'Email',
              emailCtrl,
              "Example@gmail.com",
              const Icon(Icons.email),
              false,
            ),
            const SizedBox(height: 12),
            buildMyField(
              'Password',
              passCtrl,
              "Enter your password",
              const Icon(Icons.key),
              true,
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.grey,
                onSurface: Colors.black,
              ),
              onPressed: () {},
              child: const Text(
                'forgot your password?',
                style: TextStyle(
                  fontFamily: "Georgia",
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            MaterialButton(
                minWidth: 300,
                height: 50,
                color: Colors.teal.shade300,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)),
                child: const Text(
                  ' Log in ',
                  style: TextStyle(
                    fontFamily: "Georgia",
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  _controller.goToHomeView();
                }),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Expanded(
                  child: Divider(
                    indent: 90.0,
                    endIndent: 45.0,
                    thickness: 1,
                  ),
                ),
                Text(
                  'OR',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Georgia",
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  child: Divider(
                    indent: 45.0,
                    endIndent: 90.0,
                    thickness: 1,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                  ),
                  onPressed: () {},
                  child: new SvgPicture.asset(
                    'assets/images/icons8-google.svg',
                    height: 28.0,
                    width: 28.0,
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                  ),
                  onPressed: () {},
                  child: new SvgPicture.asset(
                    'assets/images/icons8-facebook.svg',
                    height: 28.0,
                    width: 28.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Do not have an account?',
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: "Georgia",
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.teal[300],
                    onSurface: Colors.teal[300],
                  ),
                  onPressed: () {
                    Get.toNamed(RoutesClass.getSignUpRoute());
                  },
                  child: const Text(
                    'sign up?',
                    style: TextStyle(
                      fontFamily: "Georgia",
                    ),
                  ),
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
buildMyField(String label, TextEditingController textCtrl, String hinttext,
    Icon myIcon, bool secure) {
  return TextField(
    style: TextStyle(
      fontFamily: "Georgia",
    ),
    controller: textCtrl,
    decoration: InputDecoration(
      hintText: hinttext,
      hintStyle: TextStyle(fontFamily: "Roboto"),
      suffixIcon: myIcon,
      labelText: label,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    obscureText: secure,
  );
}
