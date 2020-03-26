import 'package:flutter/cupertino.dart';
import 'package:search_app_bar/search_app_bar.dart';
import 'package:traintracker/utils/reuseable_widgets.dart';
import 'package:traintracker/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SingleTrainSchedule extends StatefulWidget {
  SingleTrainSchedule({@required this.trainId});

  final String trainId;

  @override
  _SingleTrainScheduleState createState() => _SingleTrainScheduleState();
}

class _SingleTrainScheduleState extends State<SingleTrainSchedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: Text(
          'Akota Express'
        ),
      ),
      body: StreamBuilder(
            stream: Firestore.instance.collection('trains').document(widget.trainId).collection('routines').snapshots(),
            builder: (context, snapshot){
              if (snapshot.hasData){
                var routines = snapshot.data.documents;
                List<Card> allRoutines = [];
                for (var routine in routines){
                  final destination = routine.data['destination'];
                  final price = routine.data['price'];
                  final time = routine.data['time'];
                  final rou = Card(
                    elevation: 3,
                    child: ListTile(
                      leading: Icon(
                        Icons.train,
                        color: kMainColor
                      ),
                      title: Text(
                        '$destination'
                      ),
                      subtitle: Text(
                        '$price'
                      ),
                      trailing: Text(
                        '$time'
                      ),
                    ),
                  );
                  allRoutines.add(rou);
                }
                return ListView(
                  children: allRoutines,
                );
              }
              return Center(
                  child: CircularProgressIndicator()
              );;
            },
          )
    );
  }
}
