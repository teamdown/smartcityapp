import 'package:flutter/material.dart';
import './ui/home_page.dart';
import './ui/page/login/login_page.dart';

void main() => runApp(
  new MaterialApp(
    title: 'Smart City',
    initialRoute: '/',
    routes: {
      // When we navigate to the "/" route, build the FirstScreen Widget
      '/': (context) => HomePage(),
      // When we navigate to the "/second" route, build the SecondScreen Widget
      '/login': (context) => LoginPage()
    },
  )
);