import 'Enumerations/user.dart';

class UserRoad {
// private named constructor

  static final UserRoad _instance = UserRoad._internal();
  var userType;

  UserRoad._internal();

  static UserRoad getInstance() {
    return _instance;
  }
}
