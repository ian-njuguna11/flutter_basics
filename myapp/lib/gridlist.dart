import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class GridlistClass extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    final title = 'Grid text';
    // TODO: implement build
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar:  new AppBar(
          title: new Text(title),
        ),
        body: new GridView.count(
          crossAxisCount: 2,
          children: new List.generate(100, (index){
            return new Center(
              child: new Text(
                'Item $index',
                style: Theme.of(context).textTheme.headline,
                
              ),
            );

          }),
        ),
      ),

    );
  }


}