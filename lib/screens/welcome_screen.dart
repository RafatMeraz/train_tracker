import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:traintracker/utils/constants.dart';
import 'package:traintracker/utils/reuseable_widgets.dart';
import 'register_screen.dart';
import 'login_screen.dart';

class Welcome extends StatelessWidget {
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
            RoundedCornerButton(
              color: Colors.white,
              text: 'Register',
              textColor: Colors.black87,
              borderColor: kMainColor,
              onPress: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => Register()
                ));
              },
            ),
            SizedBox(
              height: 15,
            ),
            RoundedCornerButton(
              color: kMainColor,
              text: 'Login',
              textColor: Colors.white,
              borderColor: Colors.white,
              onPress: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => Login()
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

