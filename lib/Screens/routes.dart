// ignore_for_file: prefer_const_constructors


import 'package:SmartSpeaker/Screens/sectionOne/FirstScreen.dart';
import 'package:SmartSpeaker/OnBoarding/onBoard.dart';
import 'package:flutter/widgets.dart';
import 'package:SmartSpeaker/Screens/getStarted.dart';
import 'getStarted.dart';


// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  OnBoardScreen.routeName: (context) => OnBoardScreen(),
  getStarted.routeName: (context) => getStarted(),
  FirstScreen.routeName: (context) => FirstScreen(),

  
 
};
