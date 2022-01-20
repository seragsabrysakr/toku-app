import 'package:flutter/material.dart';
import 'package:toku_app/screens/Numberscreen.dart';
import 'package:toku_app/screens/familyscreen.dart';
import 'package:toku_app/screens/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}
