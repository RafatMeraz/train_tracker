import 'package:flutter/cupertino.dart';
import 'package:search_app_bar/search_app_bar.dart';
import 'package:traintracker/screens/single_train_shedule.dart';
import 'package:traintracker/utils/reuseable_widgets.dart';
import 'package:traintracker/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TicketPrice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: Text(
        'Ticket Price'
      ),
      ),
      body: StreamBuilder(
        stream: Firestore.instance.collection('tickets').snapshots(),
        builder: (context, snapshot){
          if (snapshot.hasData){
            var tickets = snapshot.data.documents;
            List<Card> allTickets = [];
            for (var ticket in tickets){
              final destination = ticket.data['destination'];
              final price = ticket.data['price'];
              final tic = Card(
                  elevation: 3,
                  child: ListTile(
                    leading: Icon(
                      Icons.train,
                      color: kMainColor,
                    ),
                    title: Text(
                      '$destination',
                    ),
                    subtitle: Text(
                        '$price Taka'
                    ),
                    trailing: Icon(
                        Icons.attach_money
                    ),
                  ),
              );
              allTickets.add(tic);
            }
            return ListView(
              children: allTickets,
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
