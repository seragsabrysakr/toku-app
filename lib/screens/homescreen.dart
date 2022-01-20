import 'package:flutter/material.dart';
import 'package:toku_app/screens/Numberscreen.dart';
import 'package:toku_app/screens/colorscreen.dart';
import 'package:toku_app/screens/familyscreen.dart';

import 'package:toku_app/screens/pharsescreen.dart';
import 'package:toku_app/widgets/homewidgett.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(131, 6, 0, 1.0),
        title: Center(
          child: Text('Toku Learning'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Homecard(
              ontap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext Context) => Numberscreen()));
              },
              text: 'NEMBERS',
              color: Color.fromRGBO(250, 149, 50, 1.0),
            ),
            const SizedBox(
              height: 10,
            ),
            Homecard(
              ontap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext Context) => Familymember()));
              },
              text: 'FAMILY MEMBERS',
              color: Color.fromRGBO(83, 128, 51, 1.0),
            ),
            const SizedBox(
              height: 10,
            ),
            Homecard(
              ontap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext Context) => Colorscreen()));
              },
              text: 'COLORS',
              color: Color.fromRGBO(126, 63, 163, 1.0),
            ),
            const SizedBox(
              height: 10,
            ),
            Homecard(
              ontap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext Context) => Pharsesscreen()));
              },
              text: 'PHARSES',
              color: Color.fromRGBO(72, 165, 204, 1.0),
            ),
          ],
        ),
      ),
    );
  }
}
