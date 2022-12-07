import 'package:flutter/material.dart';



// Create a Form widget.

class CardInputBlog extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
         Text("crawler a new blog",style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600,),),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Title',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              hintText: 'link',
            ),
          ),
        ),
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              hintText: 'description',
            ),
          ),
        )
      ],
    );
  }
}

