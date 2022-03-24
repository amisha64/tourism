import 'package:flutter/material.dart';

class Secondscreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:"Tourism App",
      home: Scaffold(
        appBar: AppBar(title: Text("Secondscreen"),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              }
              , child: Text("Home"))
        ),
      ),
    );
  }
}