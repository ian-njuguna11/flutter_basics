import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class ThemeClass extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      final appName = 'Custom Theme';

      return new MaterialApp(
        title: appName,
        theme:  new ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.lightBlue[800],
          accentColor: Colors.cyan[600],
        ),
        
        home: new MyHomePage(
          title : appName,
        ),
      );

    }
}
class MyHomePage extends StatelessWidget{
final String title ;
MyHomePage({Key key,@required this.title}):super(key:key);
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Center(
          child: new Container(
            color: Theme.of(context).accentColor,
            child: new Text(
              'Test with background color',
              style: Theme.of(context).textTheme.title,
            ),

          ),
        ),
        floatingActionButton: new Theme(
          data: Theme.of(context).copyWith(accentColor: Colors.yellow),
          child: new FloatingActionButton(
            onPressed: null,
            child: new Icon(Icons.add),
          )
        ),

      );
      
    }
}