import 'package:flutter/material.dart';

import 'package:intia_app/ui/page/annuaire/data.dart';
import 'package:intia_app/ui/page/annuaire/detail.dart';
import './ui/page/annuaire/home_annuaire.dart';

import './ui/page/login/login_page.dart';
import './ui/page/home_page.dart';


import './ui/page/agenda/home_agenda.dart';

void main() {
  runApp(
  new MaterialApp(
    title: 'Smart City',
    initialRoute: '/',
    routes: 
    {

      // When we navigate to the "/" route, build the FirstScreen Widget
      

      '/Agenda': (context) => AgendaPage(),
      '/Annuaire': (context) => AnnuairePage(),
      '/Login': (context) => LoginPage(),
      '/': (context) => HomePage(),
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