import 'package:flutter/material.dart';
import '../utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Hotlines extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: Text(
          'Hotlines'
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: null
            ),
            Text(
              'Bangladesh Railway Helpline Number : ',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                '02-8315857',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Kamalapur Railway Station Telephone number: ',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                '02-8315857, 02-9330522',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'For book you online ticket visit : ',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: InkWell(
                child: SelectableText(
                  'https://www.esheba.cnsbd.com/',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline
                  ),
                ),
                onTap: () async{
                  await launch('https://www.esheba.cnsbd.com/');
                }
              ),
            )
          ],
        ),
      ),
    );
  }
}
