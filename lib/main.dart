import 'package:flutter/material.dart';
import 'package:xogame/StartingScreen.dart';
import 'package:xogame/homescreen.dart';

void main() {
  runApp(MaterialApp(
      home: StartingScreen(TextEditingController(), TextEditingController()),
      routes: {
        StartingScreen.routename:(_)=>StartingScreen(TextEditingController(),
            TextEditingController()),
        homescreen.routeName: (_) => homescreen(TextEditingController(),TextEditingController()),
      }));
}
