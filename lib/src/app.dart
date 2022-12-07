import 'package:flutter/material.dart';
import 'pages/home.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Home Page",
      theme: ThemeData(primaryColor: Colors.black38),
      home: Home(),
    );
  }
}