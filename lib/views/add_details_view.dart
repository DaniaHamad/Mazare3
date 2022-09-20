import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mazare3/routes/routes.dart';
import 'package:mazare3/controllers/add_details_controller.dart';

class AddDetailsView extends GetView<MainScreenController> {
  const AddDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(MainScreenController());
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
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Add farm details',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Guests',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 99, 94, 94),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Color.fromARGB(255, 78, 73, 73))),
                      child: Row(
                        children: [
                          FloatingActionButton(
                            onPressed: () {
                              controller.add();
                            },
                            backgroundColor: Colors.teal[300],
                            child: const Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10.0),

                          /// value increase or decrease
                          Obx(
                            () => Text(
                              '${controller.value}',
                              style: const TextStyle(
                                fontSize: 10.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          FloatingActionButton(
                            onPressed: () {
                              controller.subtract();
                            },
                            backgroundColor: Colors.teal[300],
                            child: const Center(
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    const Text(
                      'Bathrooms',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 99, 94, 94),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Color.fromARGB(255, 78, 73, 73))),
                      child: Row(
                        children: [
                          FloatingActionButton(
                            onPressed: () {
                              controller.add();
                            },
                            backgroundColor: Colors.teal[300],
                            child: const Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10.0),

                          /// value increase or decrease
                          Obx(
                            () => Text(
                              '${controller.value}',
                              style: const TextStyle(
                                fontSize: 10.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          FloatingActionButton(
                            onPressed: () {
                              controller.subtract();
                            },
                            backgroundColor: Colors.teal[300],
                            child: const Center(
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ///////////////////////////////////////////////////////////////
            Row(
              children: [
                Column(
                  children: [
                    const Text(
                      'Bedrooms',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 99, 94, 94),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Color.fromARGB(255, 78, 73, 73))),
                      child: Row(
                        children: [
                          FloatingActionButton(
                            onPressed: () {
                              controller.add();
                            },
                            backgroundColor: Colors.teal[300],
                            child: const Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10.0),

                          /// value increase or decrease
                          Obx(
                            () => Text(
                              '${controller.value}',
                              style: const TextStyle(
                                fontSize: 10.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          FloatingActionButton(
                            onPressed: () {
                              controller.subtract();
                            },
                            backgroundColor: Colors.teal[300],
                            child: const Center(
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    const Text(
                      'Beds',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 99, 94, 94),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Color.fromARGB(255, 78, 73, 73))),
                      child: Row(
                        children: [
                          FloatingActionButton(
                            onPressed: () {
                              controller.add();
                            },
                            backgroundColor: Colors.teal[300],
                            child: const Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10.0),

                          /// value increase or decrease
                          Obx(
                            () => Text(
                              '${controller.value}',
                              style: const TextStyle(
                                fontSize: 10.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          FloatingActionButton(
                            onPressed: () {
                              controller.subtract();
                            },
                            backgroundColor: Colors.teal[300],
                            child: const Center(
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            //////////////////////////////////////////////////////////////////////
            const Text(
              'When would you like to rent your farm? ',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
