import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/components/bar-search.dart';
import 'package:flutter_application_1/src/components/blogs.dart';
import 'package:flutter_application_1/src/components/card-input-blog.dart';
import 'package:flutter_application_1/src/components/header.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
  }


 class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context){
    
    //to return to page uses Scaffold
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 20.0 , right: 20.0 , top: 30.0 ),
        children: <Widget>[
          Header(),
          Blogs(),
          BarSearch(),
          SizedBox(height :20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("more views",style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),),
                // to call functions
                GestureDetector(
                  onTap: (){
                    print("ok");
                  },
                  child: Text(
                    "show all",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0 
                    ),
                  ),
                )
              ],
          ),
           SizedBox(height :20.0),
          CardInputBlog()
        ],
      ),
    );
  }
 }