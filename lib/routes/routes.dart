import 'package:get/get.dart';
import 'package:mazare3/views/login_view.dart';
import 'package:mazare3/views/onboarding_farmer_view.dart';
import 'package:mazare3/views/signup_customer_view.dart';
import 'package:mazare3/views/signup_farmer_view.dart';
import '../views/farmer_or_customer_view.dart';
import '../views/onboarding_customer_view.dart';

class RoutesClass{
  static String farmerOrCustomer ="/";
  static String onboardingCustomer="/OnboardingCustomer";
  static String onboardingFarmer="/OnboardingFarmer";
  static String signupCustomer="/SignupCustomer";
  static String signupFarmer="/SignupFarmer";
  static String login="/login";



  static String getFarmerOrCustomerRoute()=>farmerOrCustomer;
  static String getOnboardingCustomerRoute()=>onboardingCustomer;
  static String getOnboardingFarmerRoute()=>onboardingFarmer;
  static String getSignUpCustomerRoute()=>signupCustomer;
  static String getSignUpFarmerRoute()=>signupFarmer;
  static String getLoginRoute()=>login;

  static List<GetPage> routes = [
    GetPage(name: farmerOrCustomer, page:()=> FarmerOrCustomerView()),
    GetPage(name: onboardingCustomer, page:()=> OnboardingCustomerView()),
    GetPage(name: onboardingFarmer, page:()=> OnboardingFarmerView()),
    GetPage(name: signupCustomer, page:()=> SignupCustomerView()),
    GetPage(name: signupFarmer, page:()=> SignupFarmerView()),
    GetPage(name: login, page:()=> LoginView()),
  ];
}