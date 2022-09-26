import 'package:get/get.dart';
import 'package:mazare3/widgets/cards/farm_card.dart';
import 'package:mazare3/views/home_farmer_view.dart';
import 'package:mazare3/views/signup_view.dart';
import 'package:mazare3/views/onboarding_farmer_view.dart';
import 'package:mazare3/views/signup_view.dart';
import '../views/farm_location_view.dart';
import '../views/farmer_or_customer_view.dart';
import '../views/home_customer_view.dart';
import '../views/login_view.dart';
import '../views/onboarding_customer_view.dart';
import '../views/signup_with_view.dart';

class RoutesClass {
  static String farmerOrCustomer = "/";
  static String onboardingCustomer = "/onboardingCustomer";
  static String onboardingFarmer = "/onboardingFarmer";
  static String signup = "/signup";
  static String login = "/login";
  static String signupWith = "/signupWith";
  static String homeCustomer = "/homeCustomer";
  static String homeFarmer = "/homeFarmer";
  static String addDetails = "/addDetails";
  static String farmLocation = "/farmLocation";
  static String test = "/test";

  static String getFarmerOrCustomerRoute() => farmerOrCustomer;
  static String getOnboardingCustomerRoute() => onboardingCustomer;
  static String getOnboardingFarmerRoute() => onboardingFarmer;
  static String getSignUpRoute() => signup;
  static String getLoginRoute() => login;
  static String getSignupWithRoute() => signupWith;
  static String getHomeCustomerRoute() => homeCustomer;
  static String getHomeFarmerRoute() => homeFarmer;
  static String getAddDetailsRoute() => addDetails;
  static String getFarmLocationRoute() => farmLocation;
  static String getTestRoute() => test;

  static List<GetPage> routes = [
    GetPage(name: farmerOrCustomer, page: () => FarmerOrCustomerView()),
    GetPage(name: onboardingCustomer, page: () => OnboardingCustomerView()),
    GetPage(name: onboardingFarmer, page: () => OnboardingFarmerView()),
    GetPage(name: signup, page: () => SignupView()),
    GetPage(name: login, page: () => LoginView()),
    GetPage(name: signupWith, page: () => SignupWithView()),
    GetPage(name: homeCustomer, page: () => HomeCustomerView()),
    GetPage(name: homeFarmer, page: () => HomeFarmerView()),
    //GetPage(name: addDetails, page: () => AddDetailsView()),
    GetPage(name: farmLocation, page: () => FarmLocationView()),
    //GetPage(name: test, page: () => TestView()),
  ];
}
