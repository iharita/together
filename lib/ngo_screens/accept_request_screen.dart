import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AcceptRequestScreen extends StatefulWidget {
  const AcceptRequestScreen({Key? key}) : super(key: key);

  @override
  State<AcceptRequestScreen> createState() => _AcceptRequestScreen();
}

class _AcceptRequestScreen extends State<AcceptRequestScreen> {
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();
  final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(23.1700, 72.5294),
    zoom: 20,
  );

  final CameraPosition _kLake = const CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(23.1700, 72.5294),
      tilt: 59.440717697143555,
      zoom: 20);

  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: GoogleMap(
                    mapType: MapType.normal,
                    initialCameraPosition: _kGooglePlex,
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);

                      const marker = Marker(
                        markerId: MarkerId('Kankaria Lake'),
                        position: LatLng(23.0163, 72.6029),
                        infoWindow: InfoWindow(
                          title: 'Samved Bunglows',
                          snippet: 'Kankaria Lake',
                        ),
                      );


                      setState(() {
                        markers[const MarkerId('Kankaria')] = marker;
                      });
                    },
                    markers: markers.values.toSet(),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
