import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(50.0),
        child:
        FittedBox(
          fit: BoxFit.cover,
          child:
          Image(image: AssetImage('assets/img-welcome.png'),
              fit: BoxFit.cover,
              height: 20.0,
            )
          ),
        ) 

        // CircleAvatar(
        //   radius: 72.0,
        //   backgroundColor: Colors.transparent,
        //   backgroundImage: AssetImage('assets/img-welcome.png'),
        // ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Bienvenue sur Tana.io, ',
        style: TextStyle(fontSize: 32.0, color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        "L'application pour bénéficier des différents aspects de Tana d'une manière numérique.",
        style: TextStyle(fontSize: 22.0, color: Colors.white),

      ),
    );

    final button = FloatingActionButton(
                backgroundColor: Colors.blue,
                onPressed: () {
                  Navigator.pushNamed(context, "/");
                  },
                child: Icon(Icons.arrow_forward_ios),
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
        shrinkWrap: false,
        children: <Widget>[alucard, welcome, lorem, pad,  button],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
