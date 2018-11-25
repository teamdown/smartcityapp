import 'package:flutter/material.dart';

class AgendaPage extends StatelessWidget {
  static const events = [
    'After Beach',
    'Tsiahy an-kira',
    'Apéro Musical',
    'MashManjaka AF',
    'Wine & Cheese & Jazz'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        title: Text('Agenda'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {},
          )
        ],
      ),
      backgroundColor: Colors.white,
      /* body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        itemCount: 5,
        itemBuilder: (BuildContext context, int i) => Container(
          child: Card(
              margin: EdgeInsets.symmetric(vertical: 5.0),
              color: Colors.grey.shade100,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.date_range),
                    title: Text(
                      ,
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                    subtitle:
                        Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                  )
                ],
              ),
            ),
        )
      ), */
      body: ListView(
        children: <Widget>[
          Card(
              margin: EdgeInsets.symmetric(vertical: 5.0),
              color: Colors.grey.shade100,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.date_range),
                    title: Text(
                      "After Beach - Bar Naka'h"
                    ),
                    subtitle:
                        Text('Le 25 novembre 2018 à 12:00 '),
                  )
                ],
              ),
            ),
          Card(
              margin: EdgeInsets.symmetric(vertical: 5.0),
              color: Colors.grey.shade100,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.date_range),
                    title: Text(
                      "Tsiahy an-kira"
                    ),
                    subtitle:
                        Text('Le 25 novembre 2018 à 15:00 '),
                  )
                ],
              ),
            ),
          Card(
              margin: EdgeInsets.symmetric(vertical: 5.0),
              color: Colors.grey.shade100,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.date_range),
                    title: Text(
                      "Apéro musical",
                    ),
                    subtitle:
                        Text('Le 30 novembre 2018 à 19:00 '),
                  )
                ],
              ),
            ),
          Card(
              margin: EdgeInsets.symmetric(vertical: 5.0),
              color: Colors.grey.shade100,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.date_range),
                    title: Text(
                      "Wine & Cheese & Jazz"
                    ),
                    subtitle:
                        Text('Le 30 novembre 2018 à 19:00 '),
                  )
                ],
              ),
            ),
          Card(
              margin: EdgeInsets.symmetric(vertical: 5.0),
              color: Colors.grey.shade100,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.date_range),
                    title: Text(
                      "Revy Rebika Cabane Lounge Bar Karaoke Andavamamba"
                    ),
                    subtitle:
                        Text('Le 30 novembre 2018 à 20:00  '),
                  )
                ],
              ),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
