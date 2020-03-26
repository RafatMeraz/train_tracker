import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:search_app_bar/search_app_bar.dart';
import 'package:traintracker/utils/reuseable_widgets.dart';
import 'package:traintracker/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
      body: StreamBuilder(
        stream: Firestore.instance.collection('seats').snapshots(),
        builder: (context, snapshot){
          if (snapshot.hasData){
            var seats = snapshot.data.documents;
            List<Card> allSeats = [];
            for (var seat in seats){
              final destination = seat.data['destination'];
              final time = seat.data['time'];
              final ac = seat.data['ac'];
              final non_ac = seat.data['non-ac'];
              final s = Card(
                child: ListTile(
                  leading: Icon(
                    Icons.airline_seat_recline_extra,
                    color: kMainColor,
                  ),
                  title: Text(
                    '$destination'
                  ),
                  subtitle: Text(
                      'AC: $ac  Non-AC: $non_ac'
                  ),
                  trailing: Text(
                    '$time'
                  ),
                ),
              );
              allSeats.add(s);
            }
            return ListView(
              children: allSeats,
            );
          }
          return Center(
              child: CircularProgressIndicator()
          );
        },
      )
    );
  }
}
