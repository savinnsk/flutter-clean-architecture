import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/components/blog-card.dart';
import 'package:flutter_application_1/src/models/blog-model.dart';
import '../data/data-blogs.dart';

class Blogs extends StatelessWidget{
  final List<BlogsModel> _blogs = blogs;

  @override
  Widget build(BuildContext context){
    return Container(
      height: 80.0,
      margin: EdgeInsets.only( top: 30.0 ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _blogs.length,
        itemBuilder: (BuildContext context , int index){
          return BlogCard(
            title: _blogs[index].title,
            link: _blogs[index].link,
            description: _blogs[index].description
          );
        },
      )
    );
  }
}