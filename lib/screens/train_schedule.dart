import 'package:flutter/cupertino.dart';
import 'package:search_app_bar/search_app_bar.dart';
import 'package:traintracker/utils/reuseable_widgets.dart';
import 'package:traintracker/utils/constants.dart';
import 'package:flutter/material.dart';
import 'single_train_shedule.dart';

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
      body: ListView(
        children: <Widget>[
          TrainCard(
            trainName: 'Akota Express',
            offDay: 'Sunday',
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => SingleTrainSchedule()
              ));
            },
          ),
          TrainCard(
            trainName: 'Shundorban Express',
            offDay: 'Thuesday',
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => SingleTrainSchedule()
              ));
            },
          )
        ],
      ),
    );
  }
}
