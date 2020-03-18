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

