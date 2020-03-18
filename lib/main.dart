import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

main() => runApp(TrainTracker());

class TrainTracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcome(),
    );
  }
}
