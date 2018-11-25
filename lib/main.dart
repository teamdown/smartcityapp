import 'package:flutter/material.dart';

import 'package:intia_app/ui/page/annuaire/data.dart';
import 'package:intia_app/ui/page/annuaire/detail.dart';
import './ui/page/annuaire/home_annuaire.dart';
import './ui/page/login/login_page.dart';
import './ui/page/home_page.dart';
import './ui/page/maps/tourist_reception.dart';
import './logic/SwipeAnimation/index.dart';
import './ui/page/agenda/home_agenda.dart';
import './ui/page/signal/signal_page.dart';
import './ui/page/agenda/home_agenda.dart';
import './ui/page/timeline/timeline_two_page.dart';
import './ui/page/welcome/welcome_page.dart';
import './ui/page/recycling/recycling_page.dart';

void main() {
  runApp(
  new MaterialApp(
    title: 'Smart City',
    initialRoute: '/Welcome',
    routes: 
    {

      // When we navigate to the "/" route, build the FirstScreen Widget
      

      '/Agenda': (context) => AgendaPage(),
      '/Annuaire': (context) => AnnuairePage(),
      '/Login': (context) => LoginPage(),
      '/': (context) => HomePage(),
      // '/Tourist Reception': (context) => TouristReception(),
      '/Tourist Reception': (context) => TouristReception(),
      '/Events': (context) => CardDemo(),
      '/Signal': (context) => SignalPage(),
      '/Timeline': (context) => TimelineTwoPage(),
      '/Welcome': (context) => WelcomePage(),
      '/Recycling': (context) => RecyclingPage(),
      // When we navigate to the "/second" route, build the SecondScreen Widget
    },
    onGenerateRoute: (settings) => generateRoute(settings),
  ),
  );
}

MaterialPageRoute  generateRoute(RouteSettings settings) {
    final path = settings.name.split('/');
    final title = path[1];

    Book book = books.firstWhere((it) => it.title == title);
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => Detail(book),
    );
  }