import 'package:flutter/material.dart';

class SignalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: topAppBar,
      body: Container(
        child: signalBody(context),
      ),
    );
  }

  final topAppBar = AppBar(
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
    title: Text('Signaler un problème'),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.list),
        onPressed: () {},
      )
    ],
  );

  signalBody(context) => SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[signalHeader(context), signalFields()],
        ),
      );

  signalHeader(context) => Column(
        children: [
          new SignalWidget(),
          SizedBox(
              height: 20.0,
            ),

          Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 5),
              child:
              Text(
                "Signaler un problème dans l'espace public",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0),
                textAlign: TextAlign.start,
                //style: new TextStyle(color: Colors.black),
                ),
                width: MediaQuery.of(context).size.width * 0.8,
            ),

            Padding(padding: EdgeInsets.all(2),),

            Icon(
              Icons.open_in_new,
              color: Colors.black45,
            ),
            Padding(padding: EdgeInsets.all(4),),

            Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),

          ],)

        ],
      );

  signalFields() => Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            
            SizedBox(
              height: 30.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
              width: double.infinity,
              child: RaisedButton(
                padding: EdgeInsets.all(12.0),
                shape: StadiumBorder(),
                child: Text(
                  "Signaler un problème",
                  style: TextStyle(color: Colors.white,fontSize: 18.0),
                ),
                color: Colors.green,
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
              child: Text(
                "Vous constatez un éclairage défectueux, un nid de poule, de la végétation envahissante ou d'autres problèmes dans votre entourage? Signalez-nous !",
                style: new TextStyle(color: Colors.black,fontSize: 18.0),
                //textAlign: TextAlign.center
          
              ),
            ),
          ],
        ),
      );
}


class SignalWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
          var assetsImage = new AssetImage('assets/images/arbre.jpeg');
          var image = new Image(image:assetsImage,height:240.0,fit: BoxFit.cover);
          return new Container(child:image);
    }
  }