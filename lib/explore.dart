import 'package:flutter/material.dart';

class Explore extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    List<String> images= ['https://4.bp.blogspot.com/-j1rGJ7HQn1M/UtfKuF3yPRI/AAAAAAAAEVU/N2lUwaTodtw/s1600/alappuzha-in-kerala.jpg',
      'https://assets.traveltriangle.com/blog/wp-content/uploads/2016/11/Suntemple-Konark.jpg',
      'https://spiderimg.amarujala.com/assets/images/2021/02/11/beautiful-tourist-places-in-the-world_1613035930.jpeg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLyXWTSZuogUeSZ8K2MUCDPG8WwByGrIHBAg&usqp=CAU',
      'https://4.bp.blogspot.com/-j1rGJ7HQn1M/UtfKuF3yPRI/AAAAAAAAEVU/N2lUwaTodtw/s1600/alappuzha-in-kerala.jpg',
      'https://assets.traveltriangle.com/blog/wp-content/uploads/2016/11/Suntemple-Konark.jpg',
      'https://spiderimg.amarujala.com/assets/images/2021/02/11/beautiful-tourist-places-in-the-world_1613035930.jpeg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLyXWTSZuogUeSZ8K2MUCDPG8WwByGrIHBAg&usqp=CAU',
      'https://4.bp.blogspot.com/-j1rGJ7HQn1M/UtfKuF3yPRI/AAAAAAAAEVU/N2lUwaTodtw/s1600/alappuzha-in-kerala.jpg',
      'https://assets.traveltriangle.com/blog/wp-content/uploads/2016/11/Suntemple-Konark.jpg',
      'https://spiderimg.amarujala.com/assets/images/2021/02/11/beautiful-tourist-places-in-the-world_1613035930.jpeg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLyXWTSZuogUeSZ8K2MUCDPG8WwByGrIHBAg&usqp=CAU'
    ];
  return MaterialApp(
  title:"Tourism App",
  home: Scaffold(
  appBar: AppBar(title: Text("Explore"),
  ),
  body: GridView.count(
    crossAxisCount: 2,
    children: List.generate(12, (index){
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Image.network(images[index]),
        ),
      );
    }
    )
  )
  ),
  );
}
}