import 'package:flutter/material.dart';
import 'package:traintracker/screens/dashboard_screen.dart';
import 'package:traintracker/utils/constants.dart';
import 'package:traintracker/utils/reuseable_widgets.dart';
import 'package:toast/toast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool isEnable = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: isEnable,
        child: Container(
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
                  controller: _emailController,
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
                  controller: _passwordController,
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
                text: 'Login',
                textColor: Colors.white,
                borderColor: Colors.white,
                onPress: () async{
                  setState(() {
                    isEnable = true;
                  });
                  try{
                    var _user = await _firebaseAuth.signInWithEmailAndPassword(
                        email: _emailController.text.trim(),
                        password: _passwordController.text
                    );
                    if (_user != null){
                      _emailController.clear();
                      _passwordController.clear();
                      Navigator.push(context, MaterialPageRoute(
                          builder: (BuildContext context) => DashBoard()
                      ));
                    }
                    setState(() {
                      isEnable = false;
                    });
                  } catch (e) {
                    setState(() {
                      isEnable = false;
                    });
                    Toast.show(
                        '${e.toString()}',
                        context,
                        textColor: Colors.white,
                        backgroundColor: Colors.red,
                        duration: Toast.LENGTH_LONG
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
