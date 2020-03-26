import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:search_app_bar/search_app_bar.dart';
import 'package:traintracker/screens/track_train.dart';
import 'package:traintracker/utils/reuseable_widgets.dart';
import 'package:traintracker/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TrackTrainList extends StatefulWidget {
  @override
  _TrackTrainListState createState() => _TrackTrainListState();
}

class _TrackTrainListState extends State<TrackTrainList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: Text(
          'Track Train'
        ),
      ),
      body: StreamBuilder(
        stream: Firestore.instance.collection("trains").snapshots(),
        builder: (context, snapshot){
          if (snapshot.hasData){
            var trains = snapshot.data.documents;
            List<GestureDetector> allTrains = [];
            for (var doc in trains){
              final trainName = doc.data['name'];
              final offDay = doc.data['offday'];
              final lat = doc.data['lat'];
              final long = doc.data['lon'];
              final listTile = GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (BuildContext context) => TrackTrain(
                          lat: double.parse(lat),
                          long: double.parse(long),
                        )
                    ));
                  },
                  child: Card(
                    elevation: 3,
                    child: ListTile(
                      leading: Icon(
                          Icons.train
                      ),
                      title: Text('$trainName'),
                      subtitle: Text('Off Day: $offDay'),
                      trailing: Icon(
                          Icons.location_searching
                      ),
                    ),
                  )
              );
              allTrains.add(listTile);
            }
            return ListView(
              children: allTrains,
            );
          }
          return Center(
              child: CircularProgressIndicator()
          );;
        },
      ),
    );
  }
}
