import 'package:flutter/material.dart';
import 'textInput.dart';
import 'explore.dart';
import 'secondscreen.dart';

class homescreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Tourism App')
      ),
      drawer: Drawer(
        child: ListView(
          children:[
            DrawerHeader(
              child: Text("Tourism App",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,height: 1),
              ),
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                image: AssetImage('assets/images/logo.png'),
                fit: BoxFit.scaleDown)
              ),
              margin: EdgeInsets.only(bottom: 40.0),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),

            ),
            ListTile(
              title: Text("Home"),
              trailing:  Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => homescreen()
                ));
              },
            ),
            ListTile(
              title: Text("Explore"),
              trailing:  Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Explore()));
              },
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Image.asset('assets/images/homeimg.jpg', alignment: Alignment.center),
            textInput(),
            ElevatedButton(
                child: Text("Explore"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Secondscreen(),)
                  );
                },
            ),
          ]
        ),
      ),
    );
  }
}