import 'package:flutter/material.dart';

class Tabbarclasse extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    // TODO: implement build
  return new MaterialApp(
    home: new DefaultTabController(
      length: 3,
      child: new Scaffold(
        appBar: new AppBar(
          bottom: new TabBar(
            tabs:[

              new Tab(icon: new Icon(Icons.directions_car)),
              new Tab(icon: new Icon(Icons.directions_transit)),
              new Tab(icon: new Icon(Icons.directions_bike)),
            ],
          ),
          title: new Text('Tabs Demo'),
        ),
        body: new TabBarView(
          children:[
            new Icon(Icons.directions_car),
            new Icon(Icons.directions_transit),
            new Icon(Icons.directions_bike),
          ],
        ),
      ),
    ),

   );
  }

}