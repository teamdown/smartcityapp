import 'package:flutter/material.dart';

class SignalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: signalBody(),
      ),
    );
  }

  signalBody() => SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[signalHeader(), signalFields()],
        ),
      );

  signalHeader() => Column(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         /*Image.asset(
          'images/arbre.jpg',
          height: 240.0,
          fit: BoxFit.cover,
        ),*/
          new SignalWidget(),
          SizedBox(
              height: 20.0,
            ),
          Text(
            "Signaler un problème dans l'espace public",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0),
            textAlign: TextAlign.center,
            //style: new TextStyle(color: Colors.black),
          ),
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
                "Vous constatez un luminaire déffectueux, un nid de poule, de la végétation envahisssante ou autres problèmes dans un espace public?",
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