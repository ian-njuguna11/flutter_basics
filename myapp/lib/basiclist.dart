import 'package:flutter/material.dart';

class BasiclistMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('flutter demo'),
        ),
        body: new BasicList(),
      ),
    );
  }
}

class BasicList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new ListTile(
          leading: new Icon(Icons.map),
          title: new Text('Map'),
          onTap: () {

            final snackBar = new SnackBar(
              content: new Text('Yay! A SnackBar!'),
              action: new SnackBarAction(
                label: 'Undo',
                onPressed: () {
                  // Some code to undo the change!
                },
              ),
            );

            // Find the Scaffold in the Widget tree and use it to show a SnackBar!
            Scaffold.of(context).showSnackBar(snackBar);
          }),
        new ListTile(
          leading: new Icon(Icons.pause_circle_filled),
          title: new Text('Album'),
        ),
        new ListTile(
          leading: new Icon(Icons.phone),
          title: new Text('Phone'),
        ),
      ],
    );
  }
}
