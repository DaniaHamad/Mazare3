import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:google_maps_flutter_web/google_maps_flutter_web.dart';

import '../controllers/farm_location_controller.dart';
import '../routes/routes.dart';

class FarmLocationView extends StatelessWidget {
  const FarmLocationView({super.key});

  @override
  Widget build(BuildContext context) {
    final _controller = FarmLocatinController();

    var _initialCameraPosition = const CameraPosition(
        target: LatLng(31.9539, 35.9106), zoom: 11.5); // amman's coordinates

    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: _initialCameraPosition,
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        //onMapCreated: (controller) => _controller._googleMapController = controller,
      ),
    );
  }
}
