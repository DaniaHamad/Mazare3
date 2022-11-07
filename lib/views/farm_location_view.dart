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
    final _controller = FarmLocationController();

    //final LatLng _center = const LatLng(31.9539, 35.9106);

    return Stack(children: <Widget>[
      GoogleMap(
        initialCameraPosition:
            CameraPosition(target: _controller.center, zoom: 11.5),
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        onMapCreated: (controller) =>
            _controller.googleMapController = controller,
      ),
      Padding(
        padding: EdgeInsets.all(10),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(height: 10),
        ),
      )
    ]);
  }
}
