import 'package:flutter/material.dart';

class textInput extends StatefulWidget{
  @override
  input createState() => new input();
}

class input extends State<textInput>{
  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Place"
          ),
        ),
        ),
      ],
    );
  }
}