import 'package:flutter/material.dart';

class DrawerClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Drawer Demo';
    // TODO: implement build
    return new MaterialApp(
      title: appTitle,
      home: new Drawerahomepage(title: appTitle),
    );
  }
}

class Drawerahomepage extends StatelessWidget {
  final String title;
  Drawerahomepage({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text(title)),
      body: new Center(child: new Text('My Page!')),
      drawer: new Drawer(
        child: new ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            new DrawerHeader(
              child: new Text('drawer header'),
              decoration: new BoxDecoration(
                color: Colors.blue,
              ),
            ),
            new ListTile(
              title: new Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            new ListTile(
              title: new Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
