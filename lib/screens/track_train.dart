import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:search_app_bar/search_app_bar.dart';
import 'package:traintracker/utils/reuseable_widgets.dart';
import 'package:traintracker/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TrackTrain extends StatefulWidget {
  TrackTrain({@required this.lat, @required this.long});

  final double lat, long;

  @override
  _TrackTrainState createState() => _TrackTrainState();
}

class _TrackTrainState extends State<TrackTrain> {

  Completer<GoogleMapController> _controller = Completer();


  final CameraPosition _position = CameraPosition(
    target: LatLng(23.7337, 90.4261),
    zoom: 15,
    bearing: 10,
    tilt: 10
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      appBar: AppBar(
        title: Text(
          'Track Train'
        ),
      ),
      body: GoogleMap(
        initialCameraPosition: _position,
        mapType: MapType.terrain,
        onMapCreated: (GoogleMapController controller){
          _controller.complete(controller);
        },
      ),
    );
  }
}
