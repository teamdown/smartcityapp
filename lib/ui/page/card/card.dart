import 'package:flutter/material.dart';
import './../../../utils/uidata.dart';

import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Title",
      home: new CardScreen(),
      );
  }
}

class CardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Card-test"),
        elevation: .1,
        backgroundColor: Color.fromRGBO(49, 87, 110, 1.0)

        ),

      body: Center( 
        child: new Column(
          children: <Widget>[new Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
              const ListTile(
                leading: Icon(Icons.album),
                title: Text('The Enchanted Nightingale'),
                subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                ),
              ButtonTheme.bar( // make buttons use the appropriate styles for cards
                child: ButtonBar(
                  children: <Widget>[
                  FlatButton(
                    child: const Text('BUY TICKETS'),
                    onPressed: () { /* ... */ },
                    ),
                  FlatButton(
                    child: const Text('LISTEN'),
                    onPressed: () { /* ... */ },
                    ),
                  ],
                  ),
                ),
              ],
              ),
            )
          ],),


        ),
      
      bottomNavigationBar: BottomAppBar(
        child: Container(height: 50.0,),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
        ), 
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      );
  }
}