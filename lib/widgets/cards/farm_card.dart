import 'package:flutter/material.dart';

class FarmCard extends StatelessWidget {
  const FarmCard({
    Key? key,
    required this.farmId,
    required this.photoAddress,
    required this.farmName,
    required this.farmLocation,
    required this.farmRate,
  }) : super(key: key);

  final int farmId;
  final String photoAddress;
  final String farmName;
  final String farmLocation;
  final String farmRate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        onTap: () {
          print("pressed on card $farmId");
        },
        child: Container(
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          fit: BoxFit.fill, image: NetworkImage(photoAddress)),
                    ),
                  ),
                  Positioned(
                    top: 0.0,
                    right: 0.0,
                    child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                          ),
                        ),
                        child: IconButton(
                            onPressed: () {
                              print("pressed heart of farm $farmId");
                            },
                            icon: const Icon(
                              Icons.favorite,
                              color: Colors.teal,
                            ))),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      farmName,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.teal,
                          size: 15,
                        ),
                        Text(
                          farmLocation,
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.attach_money,
                              color: Colors.teal,
                              size: 15,
                            ),
                            Text(
                              farmRate,
                              style: const TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            primary: Colors.teal,
                          ),
                          child: const Icon(Icons.arrow_forward,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
