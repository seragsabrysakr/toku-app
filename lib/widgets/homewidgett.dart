import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Homecard extends StatelessWidget {
  Color? color;
  String? text;
  VoidCallback? ontap;
  Homecard({Key? key, this.color, this.text, this.ontap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 80,
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                topRight: Radius.circular(30))),
        child: Center(
          child: Text(
            '$text',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
