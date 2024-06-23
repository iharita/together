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

                      final marker1 = Marker(
                        markerId: const MarkerId('Adani Shantigram'),
                        position: const LatLng(23.1362, 72.5423),
                        infoWindow: const InfoWindow(
                          title: 'Happy Child NGO',
                          snippet: 'Vaisnodevi Circle',
                        ),
                        icon: BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueRed), // Red marker
                      );
                      final marker2 = Marker(
                        markerId: const MarkerId('Navrangpura'),
                        position: const LatLng(23.0365, 72.5611),
                        infoWindow: const InfoWindow(
                          title: 'Save Life NGO',
                          snippet: 'Navrangpura',
                        ),
                        icon: BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueRed), // Blue marker
                      );
                      final marker3 = Marker(
                        markerId: const MarkerId('Gota'),
                        position: const LatLng(23.1013, 72.5407),
                        infoWindow: const InfoWindow(
                          title: 'Nishchay Foundation NGO',
                          snippet: 'Gota',
                        ),
                        icon: BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueRed), // Green marker
                      );
                      final marker4 = Marker(
                        markerId: const MarkerId('Kankaria Lake'),
                        position: const LatLng(23.0063, 72.6026),
                        infoWindow: const InfoWindow(
                          title: 'Shraddha Kid Care NGO',
                          snippet: 'Kankaria Lake',
                        ),
                        icon: BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueRed), // Yellow marker
                      );
                      final marker5 = Marker(
                        markerId: const MarkerId('Thaltej'),
                        position: const LatLng(23.0504, 72.4991),
                        infoWindow: const InfoWindow(
                          title: 'Atul Foundation NGO',
                          snippet: 'Thaltej',
                        ),
                        icon: BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueRed), // Violet marker
                      );
                      final marker6 = Marker(
                        markerId: const MarkerId('Chandkheda'),
                        position: const LatLng(23.1091, 72.5849),
                        infoWindow: const InfoWindow(
                          title: 'Visamo Foundation NGO',
                          snippet: 'Chandkheda',
                        ),
                        icon: BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueRed), // Cyan marker
                      );
                      final marker7 = Marker(
                        markerId: const MarkerId('Bopal'),
                        position: const LatLng(23.0337, 72.4634),
                        infoWindow: const InfoWindow(
                          title: 'Blue Birds Social Welfare NGO',
                          snippet: 'Bopal',
                        ),
                        icon: BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueRed), // Yellow marker
                      );
                      final marker8 = Marker(
                        markerId: const MarkerId('Makarba'),
                        position: const LatLng(22.9960, 72.4997),
                        infoWindow: const InfoWindow(
                          title: 'Ganga Social Fpundation NGO',
                          snippet: 'Makarba',
                        ),
                        icon: BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueRed), // Yellow marker
                      );
                      final marker9 = Marker(
                        markerId: const MarkerId('Vastral'),
                        position: const LatLng(22.9978, 72.6660),
                        infoWindow: const InfoWindow(
                          title: 'Mother of Life Trust NGO',
                          snippet: 'Vastral',
                        ),
                        icon: BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueRed), // Yellow marker
                      );
                      final marker10 = Marker(
                        markerId: const MarkerId('Nikol'),
                        position: const LatLng(23.0500, 72.6700),
                        infoWindow: const InfoWindow(
                          title: 'Rising Initiative Foundation NGO',
                          snippet: 'Nikol',
                        ),
                        icon: BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueRed), // Yellow marker
                      );
                      final marker11 = Marker(
                        markerId: const MarkerId('Narol Gam'),
                        position: const LatLng(22.9642, 72.5903),
                        infoWindow: const InfoWindow(
                          title: 'Narol Gam',
                        ),
                        icon: BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueViolet), // Yellow marker
                      );
                      final marker12 = Marker(
                        markerId: const MarkerId('Shela'),
                        position: const LatLng(23.0003, 72.4590),
                        infoWindow: const InfoWindow(
                          title: 'Shela',
                        ),
                        icon: BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueViolet), // Yellow marker
                      );
                      final marker13 = Marker(
                        markerId: const MarkerId('Rakhial'),
                        position: const LatLng(23.0213, 72.6239),
                        infoWindow: const InfoWindow(
                          title: 'Rakhial',
                        ),
                        icon: BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueViolet), // Yellow marker
                      );
                      final marker14 = Marker(
                        markerId: const MarkerId('Zundal'),
                        position: const LatLng(23.1345, 72.5826),
                        infoWindow: const InfoWindow(
                          title: 'Zundal',
                        ),
                        icon: BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueViolet), // Yellow marker
                      );
                      final marker15 = Marker(
                        markerId: const MarkerId('Shilaj'),
                        position: const LatLng(23.0557, 72.4687),
                        infoWindow: const InfoWindow(
                          title: 'Shilaj',
                        ),
                        icon: BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueViolet), // Yellow marker
                      );
                      final marker16 = Marker(
                        markerId: const MarkerId('Hathijan'),
                        position: const LatLng(22.9394, 72.6654),
                        infoWindow: const InfoWindow(
                          title: 'Hathijan',
                        ),
                        icon: BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueViolet), // Yellow marker
                      );
                      final marker17 = Marker(
                        markerId: const MarkerId('Adalaj'),
                        position: const LatLng(23.1667, 72.5810),
                        infoWindow: const InfoWindow(
                          title: 'Adalaj',
                        ),
                        icon: BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueViolet), // Yellow marker
                      );
                      final marker18 = Marker(
                        markerId: const MarkerId('Santej'),
                        position: const LatLng(23.1019, 72.4746),
                        infoWindow: const InfoWindow(
                          title: 'Santej',
                        ),
                        icon: BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueViolet), // Yellow marker
                      );

                      setState(() {
                        markers[const MarkerId('Adani Shantigram')] = marker1;
                        markers[const MarkerId('Navrangpura')] = marker2;
                        markers[const MarkerId('Gota')] = marker3;
                        markers[const MarkerId('Kankaria Lake')] = marker4;
                        markers[const MarkerId('Thaltej')] = marker5;
                        markers[const MarkerId('Chandkheda')] = marker6;
                        markers[const MarkerId('Bopal')] = marker7;
                        markers[const MarkerId('Makarba')] = marker8;
                        markers[const MarkerId('Vastral')] = marker9;
                        markers[const MarkerId('Nikol')] = marker10;
                        markers[const MarkerId('Narol Gam')] = marker11;
                        markers[const MarkerId('Shela')] = marker12;
                        markers[const MarkerId('Rakhial')] = marker13;
                        markers[const MarkerId('Zundal')] = marker14;
                        markers[const MarkerId('Shilaj')] = marker15;
                        markers[const MarkerId('Hathijan')] = marker16;
                        markers[const MarkerId('Adalaj')] = marker17;
                        markers[const MarkerId('Santej')] = marker18;
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
