import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:search_app_bar/search_app_bar.dart';
import 'package:traintracker/utils/reuseable_widgets.dart';
import 'package:traintracker/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class SeatAvailable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: Text(
            'Seat Available'
        ),
      ),
      body: ListView(
        children: <Widget>[
          TrainScheduleCard(
            from: 'Dhaka',
            to: 'Tangail',
            time: 'AC : 17   NON-AC: 3',
          ),
          TrainScheduleCard(
            from: 'Dhaka',
            to: 'Sirajgonj',
            time: 'AC : 1   NON-AC: 7',
          ),
        ],
      ),
    );
  }
}
