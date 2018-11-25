import 'package:flutter/material.dart';


class RecyclingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: topAppBar,
      body: Container(
        child: makeBody
      ),
    );
  }
}

final topAppBar = AppBar(
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
    title: Text('Points de recyclage'),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.list),
        onPressed: () {},
      )
    ],
);

final makeBody = Container(
  child: ListView(
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    children: <Widget>[
      makeCard('RecycPark','Plein','4','rp1.jpg'),
      makeCard('Smart Eco','Vide','1','rp2.jpg'),
      makeCard('Samva Bins','Vide','2','rp3.jpg'),
    ],
  ),
);

makeCard (String title, String status, String distance, String img) {
  return Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
        child: makeListTile(title, status, distance, img),
      ),
  );
}

makeListTile (String title, String status, String distance, String img) { 
  return ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        leading: Container(
          padding: EdgeInsets.only(right: 12.0),
          decoration: new BoxDecoration(
              border: new Border(
                  right: new BorderSide(width: 1.0, color: Colors.white24))),
          // child: Image(image: AssetImage('rp1.jpg'), width: 200, height: 200,),
          child: Image(image: AssetImage('assets/$img'), width: 100, height: 100,),
        ),
        title: Text(
          title,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

        subtitle: Row(
          children: <Widget>[
            Icon(Icons.linear_scale, color: Colors.yellowAccent),
            Text(status, style: TextStyle(color: Colors.white))
          ],
        ),
        trailing:
          // Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0)
          Text("$distance km", style: TextStyle(color: Colors.white,))
  );
 }