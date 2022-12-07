import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/models/blog-model.dart';

 

class BlogCard extends StatelessWidget{
  final String title;
  final String link;
  final String description;

BlogCard({ required this.title,required this.link,required this.description,});


  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(right: 20.0),
      child: Card(
        child : Padding(padding:EdgeInsets.symmetric(horizontal: 20.0 , vertical: 10.0),
        child : Row(children: <Widget>[Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(title, style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15.0),),
          Text(link, style: TextStyle( fontSize: 13.0),),
          Text(description, style: TextStyle( fontSize: 11.0),)
          ],
        )],)
        ),
      ),
    );
}
}




