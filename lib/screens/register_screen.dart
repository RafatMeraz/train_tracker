import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:traintracker/utils/constants.dart';
import 'package:traintracker/utils/reuseable_widgets.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/background.png'),
                fit: BoxFit.cover
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 150,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: kRoundedTextFieldDecoration.copyWith(
                  hintText: 'Email'
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                textAlign: TextAlign.center,
                obscureText: true,
                decoration: kRoundedTextFieldDecoration.copyWith(
                    hintText: 'Password',
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            RoundedCornerButton(
              color: kMainColor,
              text: 'Register',
              textColor: Colors.white,
              borderColor: Colors.white,
              onPress: (){

              },
            ),
          ],
        ),
      ),
    );
  }
}
