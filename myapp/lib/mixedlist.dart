import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class MixedClassMain extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    final title = 'Mixed List';
    return new MaterialApp(
      title:  title,
      home: new Scaffold(
         appBar:  new AppBar(
           title: new Text(title),
         ),
         body: new MixedList(
           items: new List<ListItem>.generate(12, 
           (i) => i % 6 == 0 ? new HeadingItem("Heading $i")
           :new MesageItem("sender $i", "Messagebody $i")
           ),


         ),
       ),
       
       
    );
  }

}


class MixedList extends StatelessWidget{
 final List<ListItem> items;
MixedList({Key key,@required this.items}):super(key:key);

@override

  Widget build(BuildContext context) {
    
    // TODO: implement build
    return new ListView.builder(
      itemCount: items.length,
      itemBuilder: (context,index){
       final item = items[index];
       if (item is HeadingItem){
         return new ListTile(
           title: new Text(
             item.heading,
             style: Theme.of(context).textTheme.headline,
           ),

         );
       }
       else if (item is MesageItem){
         return new ListTile(
           title:  new Text(
             item.sender
           ),
           subtitle: new Text(
             item.body
           ),

         );

       }


      }

    );
  }

}
abstract class ListItem{}
 class HeadingItem implements ListItem{
   final String heading;
   HeadingItem(this.heading);
 }

 class MesageItem implements ListItem{
   final String sender;
   final String body;
   MesageItem(this.sender,this.body);
 }