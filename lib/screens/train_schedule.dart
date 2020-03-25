import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:search_app_bar/search_app_bar.dart';
import 'package:traintracker/utils/reuseable_widgets.dart';
import 'package:traintracker/utils/constants.dart';
import 'package:flutter/material.dart';
import 'single_train_shedule.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TrainSchedule extends StatefulWidget {
  @override
  _TrainScheduleState createState() => _TrainScheduleState();
}

class _TrainScheduleState extends State<TrainSchedule> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: Text('Train Schedule'),
      ),
      body: StreamBuilder(
        stream: Firestore.instance.collection("trains").snapshots(),
        builder: (context, snapshot){
          if (snapshot.hasData){
              var trains = snapshot.data.documents;
              List<Card> allTrains = [];
              for (var doc in trains){
                final trainName = doc.data['name'];
                final offDay = doc.data['offday'];
                final listTile = Card(
                  elevation: 3,
                  child: ListTile(
                    leading: Icon(
                        Icons.train
                    ),
                    title: Text('$trainName'),
                    subtitle: Text('Off Day: $offDay'),
                    trailing: Icon(
                        Icons.traffic
                    ),
                  ),
                );
                allTrains.add(listTile);
              }
              return ListView(
                children: allTrains,
              );
          }
          return null;
        },
      ),
    );
  }
}
