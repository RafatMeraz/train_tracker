import 'package:flutter/cupertino.dart';
import 'package:search_app_bar/search_app_bar.dart';
import 'package:traintracker/utils/reuseable_widgets.dart';
import 'package:traintracker/utils/constants.dart';
import 'package:flutter/material.dart';

class TicketPrice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
        'Ticket Price'
      ),
      ),
      body: ListView(
        children: <Widget>[
          TrainScheduleCard(
            from: 'Dhaka',
            to: 'Tangail',
            time: '550 Taka',
          ),
          TrainScheduleCard(
            from: 'Dhaka',
            to: 'Tangail',
            time: '330 Taka',
          ),
        ],
      ),
    );
  }
}
