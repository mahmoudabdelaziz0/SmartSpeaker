// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TitleHead extends StatelessWidget {
  TitleHead({
    Key? key,
      required this.text,
     required this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "Smart Speakr",
          style: TextStyle(
            fontSize: (36),
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(padding: EdgeInsets.only(bottom: 10)),
        Text(
          text,
          style: TextStyle(
            fontSize: (20),
            color: Colors.white54,
          ),
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2),
        Image.asset(
          image,
          height: (265),
          width: (235),
        ),
      ],
    );
  }
}
