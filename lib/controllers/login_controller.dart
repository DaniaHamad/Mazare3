import 'package:get/get.dart';
import 'package:mazare3/models/user_road.dart';

import '../models/Enumerations/user.dart';
import '../routes/routes.dart';

class LoginController extends GetxController {
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

  goToHomeView(){
    switch (userRoad.userType) {
      case User.FarmOwner:
        
        break;
      case User.Customer:
        Get.toNamed(RoutesClass.getHomeCustomerRoute());
        break;
    }
  }
}
