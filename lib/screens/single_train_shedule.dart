import 'package:flutter/cupertino.dart';
import 'package:search_app_bar/search_app_bar.dart';
import 'package:traintracker/utils/reuseable_widgets.dart';
import 'package:traintracker/utils/constants.dart';
import 'package:flutter/material.dart';

class SingleTrainSchedule extends StatefulWidget {
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
      body: ListView(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/train_bg.png'),
                    fit: BoxFit.cover
                )
            ),
          ),
          TrainScheduleCard(
            from: 'Dhaka',
            to: 'Tangail',
            time: '8:30 PM',
          ),
          TrainScheduleCard(
            from: 'Dhaka',
            to: 'Tangail',
            time: '8:30 PM',
          ),
        ],
      ),
    );
  }
}
