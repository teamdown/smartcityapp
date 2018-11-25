import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TouristReception extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    GoogleMapController.init();
    final size = MediaQueryData.fromWindow(ui.window).size;
    final GoogleMapOverlayController controller =
    GoogleMapOverlayController.fromSize(
      width: size.width,
      height: size.height - 72.0,
    );
    final GoogleMapOptions _options = GoogleMapOptions(
    cameraPosition: const CameraPosition(
      target: LatLng(-33.852, 151.211),
      zoom: 11.0,
    ),
    trackCameraPosition: true,
    compassEnabled: true,
    );
    final mapController = controller.mapController;
    final Widget mapWidget = GoogleMapOverlay(controller: controller);
    return new Scaffold(
        appBar: AppBar(
          title: TextField(
            decoration: InputDecoration.collapsed(hintText: 'Search'),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.my_location),
              onPressed: () {
                final location = LatLng(-18.953690, 47.525230);
                mapController.markers.clear();
                mapController.addMarker(MarkerOptions(
                  position: location,
                ));
                mapController.animateCamera(
                  CameraUpdate.newLatLngZoom(
                      location, 15.0),
                );
              },
            ),
          ],
        ),
        body: MapsDemo(mapWidget, controller.mapController),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
                final location = LatLng(-18.953690, 47.525230);
                mapController.markers.clear();
                mapController.addMarker(MarkerOptions(
                  position: location,
                ));
                mapController.animateCamera(
                  CameraUpdate.newLatLngZoom(
                      location, 15.0),
                );
          },
          child: const Icon(Icons.my_location),
        ),
      );
  }

}

class MapsDemo extends StatelessWidget {
  MapsDemo(this.mapWidget, this.controller);

  final Widget mapWidget;
  final GoogleMapController controller;

  @override
  Widget build(BuildContext context) {
    return Center(child: mapWidget);
  }
}