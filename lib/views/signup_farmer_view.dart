import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/routes.dart';
import 'farmer_or_customer_view.dart';
import 'signup_view.dart';

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              /*
              const Text(
                'Sign up with one of the following options.',
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
                    'Already have an account?',
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
                      Get.toNamed(RoutesClass.getLoginRoute());
                    },
                    child: const Text('log in?'),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              */
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
                      style: TextStyle(color: Colors.black26, fontSize: 12),
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

