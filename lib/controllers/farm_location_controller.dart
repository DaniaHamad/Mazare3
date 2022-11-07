import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class FarmLocationController extends GetxController {
  late GoogleMapController googleMapController;
  late Marker _origin;
  late Marker _destination;

  /* var _initialCameraPosition = const CameraPosition(
      target: LatLng(31.9539, 35.9106), zoom: 11.5); */ // amman's coordinates

  final LatLng center = const LatLng(31.9539, 35.9106);

  void _onMapCreated(GoogleMapController controller) {
    googleMapController = controller;
  }

  /* @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }*/
}
