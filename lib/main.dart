import 'package:flutter/material.dart';
import './ui/page/login/login_page.dart';
import './ui/page/card/card.dart';
import './ui/page/home_page.dart';
import './ui/page/home_page.dart';
import './ui/page/dashboard/dashboard.dart';


void main() => runApp(
  new MaterialApp(
    title: 'Smart City',
    initialRoute: '/',
    routes: {
      // When we navigate to the "/" route, build the FirstScreen Widget
      '/Dashboard' : (context) => DashboardPage(),
      '/CardConnexion': (context) => CardPage(),
      '/Connexion': (context) => LoginPage(),

      '/': (context) => HomePage(),
      // When we navigate to the "/second" route, build the SecondScreen Widget
    },
  )
);