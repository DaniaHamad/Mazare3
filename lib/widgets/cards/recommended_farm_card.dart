import 'package:flutter/material.dart';

class RecommendedFarmCard extends StatelessWidget {
  const RecommendedFarmCard({
    Key? key,
    required this.farmId,
    required this.photoAddress,
    required this.farmName,
    required this.farmLocation,
  }) : super(key: key);

  final int farmId;
  final String photoAddress;
  final String farmName;
  final String farmLocation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          print("recommended card $farmId");
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
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: Colors.teal,
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
