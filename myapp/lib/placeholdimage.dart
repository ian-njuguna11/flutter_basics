import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';

class ImageClass extends StatelessWidget {
  final title = 'Fade in Imagedf';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        title: title,
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text(title),
            ),
            body: new Center(
              child: new CachedNetworkImage(
                placeholder: new CircularProgressIndicator(),
                imageUrl:
                    'https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true',
              ),
            ),
          ),
         );
  }
}
