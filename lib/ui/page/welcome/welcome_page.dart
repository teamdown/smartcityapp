import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/alucard.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Antananarivo vous souhaite la bienvenue',
        style: TextStyle(fontSize: 32.0, color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit condimentum mauris id tempor. Praesent eu commodo lacus. Praesent eget mi sed libero eleifend tempor. Sed at fringilla ipsum. Duis malesuada feugiat urna vitae convallis. Aliquam eu libero arcu.',
        style: TextStyle(fontSize: 22.0, color: Colors.white),

      ),
    );

    final button = RaisedButton(
      onPressed: () {
          Navigator.pushNamed(
          context, "/");
      },
      color: Colors.blue,
      child: Text('Commencer', style: TextStyle(color: Colors.white),),
      );
    final pad = Padding(padding: EdgeInsets.all(16.0),);

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        color: Colors.blueGrey
        // gradient: LinearGradient(colors: [
        //   Colors.black,
        //   Color.fromARGB(1, 38, 38, 43),
        // ]),
      ),
      child: ListView(
        children: <Widget>[alucard, welcome, lorem, pad,  button],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
