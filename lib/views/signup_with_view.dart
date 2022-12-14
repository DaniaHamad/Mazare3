import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../routes/routes.dart';

class SignupWithView extends StatelessWidget {
  SignupWithView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
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
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Icon(
              Icons.photo,
              color: Colors.grey.shade300,
              size: 200,
            ),
            const SizedBox(
              height: 70,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),
                child: Column(children: [
                  const SizedBox(
                    height: 50,
                  ),
                  MaterialButton(
                      minWidth: 300,
                      height: 50,
                      color: Colors.teal.shade300,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0)),
                      child: const Text(
                        ' Sign Up with email ',
                        style: TextStyle(
                          fontFamily: "Georgia",
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Get.toNamed(RoutesClass.getSignUpRoute());
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
                          fontFamily: "Georgia",
                          fontSize: 15,
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
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account?',
                        style: TextStyle(
                          fontFamily: "Georgia",
                          color: Colors.grey,
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.teal[300],
                          onSurface: Colors.teal[300],
                        ),
                        onPressed: () {
                          Get.toNamed(RoutesClass.getLoginRoute());
                        },
                        child: const Text(
                          'Login?',
                          style: TextStyle(
                            fontFamily: "Georgia",
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
