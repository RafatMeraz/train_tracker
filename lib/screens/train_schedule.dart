import 'package:flutter/cupertino.dart';
import 'package:search_app_bar/search_app_bar.dart';
import 'package:traintracker/utils/reuseable_widgets.dart';
import 'package:traintracker/utils/constants.dart';
import 'package:flutter/material.dart';

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
          ),
          TrainCard(
            trainName: 'Shundorban Express',
            offDay: 'Thuesday',
          )
        ],
      ),
    );
  }
}

class TrainCard extends StatelessWidget {
  TrainCard({@required this.trainName, @required this.offDay});

  final String trainName;
  final String offDay;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: ListTile(
        leading: Icon(
          Icons.train
        ),
        title: Text(
          '$trainName'
        ),
        subtitle: RichText(
          text: TextSpan(
            text: 'Off day : ',
            style: TextStyle(
              color: Colors.grey[800]
            ),
            children: <TextSpan>[
              TextSpan(
                text: '$offDay'
              )
            ]
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios
        ),
      ),
    );
  }
}
