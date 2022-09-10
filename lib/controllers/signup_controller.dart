import 'package:get/get.dart';

import '../models/Enumerations/user.dart';
import '../models/user_road.dart';
import '../routes/routes.dart';

class SignUpController extends GetxController {
  UserRoad userRoad = UserRoad.getInstance();
  goToSignUpView() {
    switch (userRoad.userType) {
      case User.FarmOwner:
        Get.toNamed(RoutesClass.getSignUpFarmerRoute());
        break;
      case User.Customer:
        Get.toNamed(RoutesClass.getSignUpCustomerRoute());
        break;
    }
  }
}
