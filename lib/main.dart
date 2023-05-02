import 'package:flutter/material.dart';
import 'package:flutter_level_up/screen/webview_screen.dart';
import 'package:flutter_level_up/screen/pageview_screen.dart';
import 'package:flutter_level_up/screen/dday_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: 'sunflower',
        textTheme: TextTheme(
          headline1: TextStyle(
              color: Colors.white,
              fontSize: 80.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'parisienne'),
          headline2: TextStyle(
            color: Colors.white,
            fontSize: 50.0,
            fontWeight: FontWeight.w700,
          ),
          bodyText1: TextStyle(color: Colors.white, fontSize: 30.0),
          bodyText2: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
      home: DdayScreen(),
    ),
  );
}
