import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class SignUpFarmerController extends GetxController {
  var file;
  var selectedImagePath = ''.obs;
  var count =0.obs;
  var isSelectedImagePath =false.obs;


  takePhoto(source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: source);
    if (pickedFile == null) return;

    file = File(pickedFile.path);
    selectedImagePath.value = pickedFile.path;
    isSelectedImagePath.value =true;
    Get.back();
  }
}
