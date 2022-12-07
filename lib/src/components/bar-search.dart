import 'package:flutter/material.dart';

class BarSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Material(
      // text field area
      elevation: 5.0,
      child: TextField(
        style: TextStyle(color: Colors.black , fontSize: 16.6),
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 16.0 , vertical: 7.0),
          suffixIcon: Material(
            elevation: 2.0,
            child: Icon(
              Icons.search,
              color: Colors.black45,
            ),
          ),
          border: InputBorder.none,
          hintText: "search blogs"
        ),
      ),
    );
    
  }
}