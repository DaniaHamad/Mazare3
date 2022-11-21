// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/routes.dart';

class FarmOffersView extends StatelessWidget {
  const FarmOffersView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                backgroundColor: const Color.fromARGB(249, 249, 249, 249),
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
        actions: [
          Padding(
            padding:
                const EdgeInsets.only(right: 10.0, top: 10.0, bottom: 10.0),
            child: SizedBox(
              width: 35,
              height: 35,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(249, 249, 249, 249),
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    side: const BorderSide(width: 2, color: Colors.teal)),
                child: const Icon(
                  Icons.person,
                  color: Colors.teal,
                  size: 25,
                ),
              ),
            ),
          ),
        ],
      ),
      ////////////////////////////////////////////////
      body: SafeArea(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 13,
                ),
                Text(
                  ' what are your farm amenities? ',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                //first row
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox.fromSize(
                      size: Size(65, 65),
                      child: Card(
                        child: Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Colors.white,
                          child: InkWell(
                            splashColor: Colors.black,
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(Icons.pool,
                                    color: Colors.grey), // <-- Icon
                                SizedBox(
                                  height: 3,
                                ),
                                Text("Pool",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 9)), // <-- Text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox.fromSize(
                      size: Size(65, 65),
                      child: Card(
                        child: Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Colors.white,
                          child: InkWell(
                            splashColor: Colors.black,
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(Icons.wifi,
                                    color: Colors.grey), // <-- Icon
                                SizedBox(
                                  height: 3,
                                ),
                                Text("WiFi",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 9)), // <-- Text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox.fromSize(
                      size: Size(65, 65),
                      child: Card(
                        child: Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Colors.white,
                          child: InkWell(
                            splashColor: Colors.black,
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(Icons.outdoor_grill,
                                    color: Colors.grey), // <-- Icon
                                SizedBox(
                                  height: 3,
                                ),
                                Text("BBq grill",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 9)), // <-- Text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //second row
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox.fromSize(
                      size: Size(65, 65),
                      child: Card(
                        child: Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Colors.white,
                          child: InkWell(
                            splashColor: Colors.black,
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(Icons.fireplace,
                                    color: Colors.grey), // <-- Icon
                                SizedBox(
                                  height: 3,
                                ),
                                Text("Fireplace",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 9)), // <-- Text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox.fromSize(
                      size: Size(65, 65),
                      child: Card(
                        child: Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Colors.white,
                          child: InkWell(
                            splashColor: Colors.black,
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(Icons.tv, color: Colors.grey), // <-- Icon
                                SizedBox(
                                  height: 3,
                                ),
                                Text("TV",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 9)), // <-- Text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox.fromSize(
                      size: Size(65, 65),
                      child: Card(
                        child: Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Colors.white,
                          child: InkWell(
                            splashColor: Colors.black,
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(Icons.kitchen,
                                    color: Colors.grey), // <-- Icon
                                SizedBox(
                                  height: 3,
                                ),
                                Text("Kitchen",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 9)), // <-- Text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //third row
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox.fromSize(
                      size: Size(65, 65),
                      child: Card(
                        child: Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Colors.white,
                          child: InkWell(
                            splashColor: Colors.black,
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(Icons.car_rental_rounded,
                                    color: Colors.grey), // <-- Icon
                                SizedBox(
                                  height: 3,
                                ),
                                Text("Parking",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 9)), // <-- Text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox.fromSize(
                      size: Size(65, 65),
                      child: Card(
                        child: Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Colors.white,
                          child: InkWell(
                            splashColor: Colors.black,
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(Icons.air, color: Colors.grey), // <-- Icon
                                SizedBox(
                                  height: 3,
                                ),
                                Text("Conditioner",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 9)), // <-- Text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox.fromSize(
                      size: Size(65, 65),
                      child: Card(
                        child: Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Colors.white,
                          child: InkWell(
                            splashColor: Colors.black,
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(Icons.sports_basketball,
                                    color: Colors.grey), // <-- Icon
                                SizedBox(
                                  height: 3,
                                ),
                                Text("Basketball",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 9)), // <-- Text
                                Text("field",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 9)), // <-- Text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                //fourth row
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox.fromSize(
                      size: Size(65, 65),
                      child: Card(
                        child: Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Colors.white,
                          child: InkWell(
                            splashColor: Colors.black,
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(Icons.speaker,
                                    color: Colors.grey), // <-- Icon
                                SizedBox(
                                  height: 3,
                                ),
                                Text("Speakers",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 9)), // <-- Text
                                // <-- Text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox.fromSize(
                      size: Size(65, 65),
                      child: Card(
                        child: Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Colors.white,
                          child: InkWell(
                            splashColor: Colors.black,
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(Icons.kitchen_outlined,
                                    color: Colors.grey), // <-- Icon
                                SizedBox(
                                  height: 3,
                                ),
                                Text("Fridge",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 9)), // <-- Text
                                // <-- Text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox.fromSize(
                      size: Size(65, 65),
                      child: Card(
                        child: Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Colors.white,
                          child: InkWell(
                            splashColor: Colors.black,
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(Icons.fire_extinguisher,
                                    color: Colors.grey), // <-- Icon
                                SizedBox(
                                  height: 3,
                                ),
                                Text("Fire",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 9)), // <-- Text
                                Text("extinguisher",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 9)), // <-- Text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                //fifth row
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox.fromSize(
                      size: Size(65, 65),
                      child: Card(
                        child: Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Colors.white,
                          child: InkWell(
                            splashColor: Colors.black,
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(Icons.add, color: Colors.grey), // <-- Icon
                                SizedBox(
                                  height: 3,
                                ),
                                Text("First aid_kit",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 9)), // <-- Text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox.fromSize(
                      size: Size(65, 65),
                      child: Card(
                        child: Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Colors.white,
                          child: InkWell(
                            splashColor: Colors.black,
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(Icons.wash,
                                    color: Colors.grey), // <-- Icon
                                SizedBox(
                                  height: 2,
                                ),
                                Text("Washing \nmachine",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 9)), // <-- Text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox.fromSize(
                      size: Size(65, 65),
                      child: Card(
                        child: Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Colors.white,
                          child: InkWell(
                            splashColor: Colors.black,
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(Icons.outdoor_grill,
                                    color: Colors.grey), // <-- Icon
                                SizedBox(
                                  height: 3,
                                ),
                                Text("BBq grill",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 9)), // <-- Text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),

// view more
                Row(
                  children: [
                    SizedBox(width: 250),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text('view more',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              )), // <-- Text
                          SizedBox(
                            width: 3,
                          ),
                          Icon(
                              // <-- Icon
                              Icons.arrow_forward,
                              size: 15.0,
                              color: Colors.grey),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      minWidth: 200,
                      height: 50,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(
                            color: Colors.teal.shade300,
                          )),
                      onPressed: () {},
                      child: Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
