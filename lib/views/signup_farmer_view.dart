import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../controllers/signup_farmer_controller.dart';
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

  SignUpFarmerController _controller = SignUpFarmerController();

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
                              onPressed: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (context) => bottomSheet(context));
                              },
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
                            Obx(() {
                              return _controller.isSelectedImagePath.value ==true? Center(
                                      child: Image(
                                          image: FileImage(File(_controller.selectedImagePath.value)) as ImageProvider))
                                  : Icon(Icons.insert_drive_file_outlined);
                            })
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

  Widget bottomSheet(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey[200],
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      width: double.infinity,
      height: size.height * 0.2,
      child: Column(children: [
        const Text(
          "Choose Photo",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),

        const SizedBox(
          height: 50,
        ), // SizedBox
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                _controller.takePhoto(ImageSource.gallery);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.image,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Gallery",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 80,
            ),
            InkWell(
              onTap: () {
                _controller.takePhoto(ImageSource.camera);
              },
              child: Column(
                children: const [
                  Icon(
                    Icons.camera,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Camera",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
