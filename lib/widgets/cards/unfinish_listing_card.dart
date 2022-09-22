import 'package:flutter/material.dart';
import 'package:mazare3/models/Enumerations/availablity.dart';

class UnFinishListingCard extends StatelessWidget {
  const UnFinishListingCard({
    Key? key,
    required this.farmId,
    required this.photoAddress,
    required this.farmName,
  }) : super(key: key);

  final int farmId;
  final String photoAddress;
  final String farmName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          print("my unfinished card $farmId");
        },
        child: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:  Colors.teal[100],
          ),
          width: 300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      fit: BoxFit.fill, image: NetworkImage(photoAddress)),
                ),
              ),
              const SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(farmName),
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
