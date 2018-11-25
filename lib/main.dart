import 'package:flutter/material.dart';
import './ui/page/login/login_page.dart';
import './ui/page/home_page.dart';
import './ui/page/maps/tourist_reception.dart';
import './logic/SwipeAnimation/index.dart';

void main() => runApp(
  new MaterialApp(
    title: 'Smart City',
    initialRoute: '/',
    routes: {
      // When we navigate to the "/" route, build the FirstScreen Widget
      '/Login': (context) => LoginPage(),
      '/': (context) => HomePage(),
      // '/Tourist Reception': (context) => TouristReception(),
      '/Tourist Reception': (context) => TouristReception(),
      '/Events': (context) => CardDemo()
      // When we navigate to the "/second" route, build the SecondScreen Widget
    },
  )
);