import 'package:mazare3/models/Enumerations/availablity.dart';
import 'package:mazare3/models/photo.dart';
import 'package:mazare3/models/rate.dart';

import 'Enumerations/amenity.dart';
import 'Enumerations/rental_type.dart';

class Farm{
  int farmID;
  int ownerID;//UserID
  List<Rate> activeRates;
  List<Photo> photos;
  List<Amenity> amenities;
  String location;
  int numberOfVisitors;
  List<String>reviews;
  Availability availability;
  RentalType rentalType;

  Farm({required this.farmID,required this.ownerID,required this.activeRates,required this.photos,required this.amenities,
  required this.location, required this.numberOfVisitors, required this.reviews, required this.availability, required this.rentalType});
}