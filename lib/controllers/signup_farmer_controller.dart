import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class SignUpFarmerController extends GetxController {
  //var selectedImagePath = ''.obs;
  //var selectedImageSize = ''.obs;
  static SignUpFarmerController get to =>
      SignUpFarmerController(); //ImagePickerController

  File? pickedImageFile;

  Future<void> pickImage() async {
    final picker = ImagePicker();
    //final pickedFile = await ImagePicker().pickImage(source: imageSource);
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      //selectedImagePath.value = pickedFile.path;
      //selectedImageSize.value =
      //    "${((File(selectedImagePath.value)).lengthSync() / 1024 / 1024).toStringAsFixed(2)}Mb";
      pickedImageFile = File(pickedImage.path);
      print('file path');
    } else {
      //print('No image selected');
      Get.snackbar('Error', 'No Image selected !',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white);
    }
  }
}
