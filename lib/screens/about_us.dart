import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/constants.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: Text(
          'About Us'
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: kMainColor,)
              ),
              child: Text(
                'Train Tracker app will help you when you are travelling by train as a guide. We will try to make it more better & useful.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'Developers',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  color: kMainColor,
                  fontSize: 20
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                elevation: 3,
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 50,
                      height: 50,
                      child: Image.asset(
                          'images/ridoy.jpg'
                      ),
                    ),
                  ),
                  title: Text(
                    'Ahasanuzzaman',
                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                  subtitle: Text(
                    '16101075@uap-bd.edu',
                    style: TextStyle(
                        fontSize: 14
                    ),
                  ),
                )
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                elevation: 3,
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      width: 50,
                      height: 50,
                      child: Image.asset(
                          'images/razu.jpg'
                      ),
                    ),
                  ),
                  title: Text(
                    'Md. Abdul Kaium Razu',
                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                  subtitle: Text(
                    '13101059@uap-bd.edu',
                    style: TextStyle(
                        fontSize: 14
                    ),
                  ),
                )
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                elevation: 3,
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 50,
                      height: 50,
                      child: Image.asset(
                          'images/farhana.jpg'
                      ),
                    ),
                  ),
                  title: Text(
                    'Farhana zaman',
                    style: TextStyle(
                      fontSize: 18
                    ),
                  ),
                  subtitle: Text(
                    '1610186@uap-bd.edu',
                    style: TextStyle(
                      fontSize: 14
                    ),
                  ),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
