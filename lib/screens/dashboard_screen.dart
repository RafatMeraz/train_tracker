import 'package:flutter/cupertino.dart';
import 'package:traintracker/screens/login_screen.dart';
import 'package:traintracker/screens/seat_available.dart';
import 'package:traintracker/screens/track_train.dart';
import 'package:traintracker/screens/track_train_list.dart';
import 'package:traintracker/utils/reuseable_widgets.dart';
import 'package:traintracker/utils/constants.dart';
import 'package:flutter/material.dart';
import 'train_schedule.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../screens/ticket_price.dart';
import '../screens/station_map.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: Center(
            child: Text(
                'Train Tracker'
            ),
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: (){
              _firebaseAuth.signOut();
              Navigator.pop(context);
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(
                Icons.exit_to_app,
              ),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Train Tracker',
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.dashboard,
              ),
              title: Text('Home'),
            )
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/dashboard.png'),
                fit: BoxFit.cover
              )
            ),
            child: Center(
              child: RoundedCornerButton(
                borderColor: Colors.white,
                textColor: Colors.white,
                text: 'Check Schedule',
                color: Color.fromARGB(0, 0, 0, 0),
                onPress: (){},
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: MenuCard(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) => TrainSchedule()
                          ));
                        },
                        icon: Icons.dashboard,
                        iconColor: Colors.red,
                        menuName: 'Train Schedule',
                      ),
                    ),
                    Expanded(
                      child: MenuCard(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) => TicketPrice()
                          ));
                        },
                        icon: Icons.label_outline,
                        iconColor: Colors.green[900],
                        menuName: 'Ticket Price',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: MenuCard(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) => SeatAvailable()
                          ));
                        },
                        icon: Icons.airline_seat_recline_extra,
                        iconColor: Color(0xFF4A0000),
                        menuName: 'Seat Available',
                      ),
                    ),
                    Expanded(
                      child: MenuCard(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) => StationMap()
                          ));
                        },
                        icon: Icons.location_on,
                        iconColor: Color(0xFF741616),
                        menuName: 'Station Map',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: MenuCard(
                        onTap: () {},
                        icon: Icons.search,
                        iconColor: Color(0xFF778722),
                        menuName: 'Search Train',
                      ),
                    ),
                    Expanded(
                      child: MenuCard(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) => TrackTrainList()
                          ));
                        },
                        icon: Icons.location_searching,
                        iconColor: Color(0xFF1234BC),
                        menuName: 'Track Train',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: MenuCard(
                        onTap: () {},
                        icon: Icons.phone,
                        iconColor: Color(0xFFF3118A),
                        menuName: 'Hotlines',
                      ),
                    ),
                    Expanded(
                      child: MenuCard(
                        onTap: (){},
                        icon: Icons.info_outline,
                        iconColor: Color(0xFFCCAA00),
                        menuName: 'About Us',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
