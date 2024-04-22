// ignore_for_file: file_names

import 'package:SmartSpeaker/OnBoarding/components/title.dart';
import 'package:flutter/material.dart';
import 'package:SmartSpeaker/Screens/getStarted.dart';

// This is the best practice
import 'package:SmartSpeaker/components/default_button.dart';

class Body extends StatefulWidget {
  const Body({ Key?key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String,String>> splashData = [
    {"text": "Welcome to Smart Speakr", "image": "assets/logo.png"},
    {
      "text": "You can communicate easily ",
      "image": "assets/Chat1.png"
    },
    {
      "text":
          "your Camira will be your friend ,and your first translator  ",
      "image": "assets/Chat2.png"
    },
    {
      "text":
          "As a normal person, You can You can learn sign language through some short videos",
      "image": "assets/Chat3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => TitleHead(
                  image:  splashData[index]["image"]!,
                  text: splashData[index]['text']!,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      splashData.length,
                      (index) => buildDot(index: index),
                    ),
                  ),
                  Spacer(flex: 3),
                  DefaultButton(
                    text: "Get Started",
                    press: () {
                      Navigator.pushNamed(context, getStarted.routeName);
                    },
                  ),
                  Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 50),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index
            ? Color.fromRGBO(10, 141, 246, 1.0)
            : Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
