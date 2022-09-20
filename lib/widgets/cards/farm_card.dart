

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
      child: Container(
        width: 200,
        height: 250,
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
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                        ),
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite,
                            color: Colors.teal,
                          ))),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left:8.0,top:8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    farmName,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.teal[100],
                        size: 15,
                      ),
                      Text(
                        farmLocation,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.attach_money,
                            color: Colors.teal[100],
                            size: 15,
                          ),
                          Text(
                        farmRate,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                        ],
                      ),
                      
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.arrow_forward, color: Colors.white),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          //padding: EdgeInsets.all(20),
                          primary: Colors.teal, // <-- Button color// <-- Splash color
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
