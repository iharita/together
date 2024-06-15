import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(23.1700, 72.5294),
    zoom: 20,
  );

  final CameraPosition _kLake = const CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(23.0225, 72.5714),
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
                    markerId: MarkerId('Adani'),
                    position: LatLng(23.1362, 72.5423),
                    infoWindow: InfoWindow(
                      title: 'Happy Child NGO',
                      snippet: 'Vaisnodevi Circle',
                    ),
                  );
                  const marker2 = Marker(
                    markerId: MarkerId('Navrangpura'),
                    position: LatLng(23.0365, 72.5611),
                    infoWindow: InfoWindow(
                      title: 'Save Life NGO',
                      snippet: 'Navrangpura',
                    ),
                  );
                  const marker3 = Marker(
                    markerId: MarkerId('Gota'),
                    position: LatLng(23.1013, 72.5407),
                    infoWindow: InfoWindow(
                      title: 'Nishchay Foundation NGO',
                      snippet: 'Gota',
                    ),
                  );
                  const marker4 = Marker(
                    markerId: MarkerId('Kankaria Lake'),
                    position: LatLng(23.0063, 72.6026),
                    infoWindow: InfoWindow(
                      title: 'Shraddha Kid Care NGO',
                      snippet: 'Kankaria Lake',
                    ),
                  );
                  const marker5 = Marker(
                    markerId: MarkerId('Thaltej'),
                    position: LatLng(23.0504, 72.4991),
                    infoWindow: InfoWindow(
                      title: 'Atul Foundation NGO',
                      snippet: 'Thaltej',
                    ),
                  );
                  const marker6 = Marker(
                    markerId: MarkerId('Chandkheda'),
                    position: LatLng(23.1091, 72.5849),
                    infoWindow: InfoWindow(
                      title: 'Visamo Foundation NGO',
                      snippet: 'Chandkheda',
                    ),
                  );

                  setState(() {
                    markers[const MarkerId('Adani')] = marker;
                    markers[const MarkerId('Adani2')] = marker2;
                    markers[const MarkerId('Gota')] = marker3;
                    markers[const MarkerId('Kankaria')] = marker4;
                    markers[const MarkerId('Thaltej')] = marker5;
                    markers[const MarkerId('Chankheda')] = marker6;
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
