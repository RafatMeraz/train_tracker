import 'package:flutter/cupertino.dart';
import 'package:traintracker/utils/reuseable_widgets.dart';
import 'package:traintracker/utils/constants.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
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
                        onTap: () {},
                        icon: Icons.dashboard,
                        iconColor: Colors.red,
                        menuName: 'Train Schedule',
                      ),
                    ),
                    Expanded(
                      child: MenuCard(
                        onTap: (){},
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
                        onTap: () {},
                        icon: Icons.airline_seat_recline_extra,
                        iconColor: Color(0xFF4A0000),
                        menuName: 'Seat Available',
                      ),
                    ),
                    Expanded(
                      child: MenuCard(
                        onTap: (){},
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
                        onTap: (){},
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

class MenuCard extends StatelessWidget {
  MenuCard({@required this.menuName, @required this.icon, @required this.iconColor, @required this.onTap});

  final IconData icon;
  final Color iconColor;
  final String menuName;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        child: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(
                icon,
                color: iconColor,
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                '$menuName',
                style: TextStyle(
                    fontSize: 18
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
