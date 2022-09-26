import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class FarmLocatinController extends GetxController {
  late GoogleMapController _googleMapController;
  late Marker _origin;
  late Marker _destination;

  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }
}
