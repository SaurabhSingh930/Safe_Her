import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class GoogleMapFlutter extends StatefulWidget {
  const GoogleMapFlutter({super.key});

  @override
  State<GoogleMapFlutter> createState() => _GoogleMapFlutterState();
}

class _GoogleMapFlutterState extends State<GoogleMapFlutter> {
  LatLng myCurrentLocation = const LatLng(31.2510016, 75.7054162);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(initialCameraPosition: CameraPosition(target: myCurrentLocation, zoom: 15),),
    );
  }
}
