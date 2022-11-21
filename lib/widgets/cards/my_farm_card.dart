import 'package:flutter/material.dart';
import 'package:mazare3/models/Enumerations/availablity.dart';

class MyFarmCard extends StatelessWidget {
  const MyFarmCard({
    Key? key,
    required this.farmId,
    required this.photoAddress,
    required this.farmName,
    required this.farmLocation,
    required this.farmAvailability,
  }) : super(key: key);

  final int farmId;
  final String photoAddress;
  final String farmName;
  final String farmLocation;
  final Availability farmAvailability;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          print("my farm card $farmId");
        },
        child: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(249, 249, 249, 249),
          ),
          height: 100,
          width: 300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      fit: BoxFit.fill, image: NetworkImage(photoAddress)),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(farmName),
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
                  farmAvailability == Availability.available
                      ? Row(
                          children: const [
                            Icon(
                              Icons.house,
                              color: Colors.teal,
                              size: 15,
                            ),
                            Text("Available",
                                style: TextStyle(
                                  color: Colors.teal,
                                )),
                          ],
                        )
                      : Row(
                          children: [
                            Icon(
                              Icons.house,
                              color: Colors.teal[200],
                              size: 15,
                            ),
                            Text("Unavailable",
                                style: TextStyle(
                                  color: Colors.teal[200],
                                )),
                          ],
                        )
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  primary: Colors.teal,
                ),
                child: const Icon(Icons.arrow_forward, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
