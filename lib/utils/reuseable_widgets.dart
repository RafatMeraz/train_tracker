import 'package:flutter/material.dart';
import 'package:traintracker/utils/constants.dart';

class RoundedCornerButton extends StatelessWidget {
  RoundedCornerButton({@required this.text, @required this.color, @required this.onPress,
    @required this.textColor, @required this.borderColor});

  final String text;
  final Function onPress;
  final Color color;
  final Color textColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: RaisedButton(
        elevation: 6,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(
              color: borderColor,
              width: 1,
            )
        ),
        onPressed: onPress,
        color: color,
        child: Text(
          '$text',
          style: TextStyle(
            fontSize: 18,
            color: textColor,
          ),
        ),
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