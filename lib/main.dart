import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mazare3/routes/routes.dart';
import 'package:mazare3/views/farmer_or_customer_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Mazare3',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesClass.getFarmerOrCustomerRoute(),
      getPages: RoutesClass.routes,
    );
  }
}
