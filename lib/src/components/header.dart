import 'package:flutter/material.dart';


class Header extends StatelessWidget {
  final H1 = TextStyle( fontSize: 20.0 , fontWeight : FontWeight.w400 );
  final H2 = TextStyle( fontSize: 15.0 , fontWeight : FontWeight.w300 );

  @override
  Widget build(BuildContext context){
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(children: <Widget>[
                Text("Blogs list", style:H1,),
                Text("welcome to favblogs", style:H2,),
              ],
              ),
              Icon(Icons.notifications)
            ],
          );
  }
  }

