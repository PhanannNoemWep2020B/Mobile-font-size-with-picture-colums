
import 'package:flutter/material.dart';

void main() => runApp(Phanann());
class Phanann extends StatefulWidget {
  @override
  _PhanannState createState() => _PhanannState();
}

class _PhanannState extends State<Phanann> {
  Container weddingbox(String img1, String img2){
    return Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.network(img1,
                  fit: BoxFit.cover,
                  width: 200.0,
                  ),
                  Image.network(img2,
                  fit: BoxFit.cover,
                  width: 200.0,
                  ),
                ],
              ),
            );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My love",
          style: TextStyle(fontFamily: "ladyshop", fontSize: 30.0),),
          backgroundColor: Colors.pink,
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 20.0),
              child: Icon(Icons.shopping_cart),
            ),
            Container(
              margin: EdgeInsets.only(right: 20.0),
              child: Icon(Icons.search),
            ),
          ],
        ),

        drawer: Drawer(
          child: ListView(
           children: <Widget>[
             DrawerHeader(
               child: Center(
                 child: CircleAvatar(
                  backgroundImage: NetworkImage("https://i.pinimg.com/736x/9f/fd/d9/9ffdd99a1ee1ef6653b383aec27a1513.jpg"),
                  radius: 60.0,
                 ),
               ),
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: NetworkImage("http://www.wallpapers13.com/wp-content/uploads/2016/02/Beautiful-scenery-and-mountainous-river-flowers-green-trees-vegetation-Hd-wallpapers-915x515.jpg"),
                   fit: BoxFit.cover,
                 ),
               ),
             ),
             ListTile(
               leading: Icon(Icons.call, size: 30.0, color: Colors.red,),
               title: Text("096 987 2340", style: TextStyle(color: Colors.orange, fontSize: 20.0),),
             ),
             ListTile(
               leading: Icon(Icons.email, size: 30.0, color: Colors.green,),
               title: Text("phanannnoem2020@gmial.com", style: TextStyle(color: Colors.redAccent, fontSize: 20.0),),
             ),
           ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            Image.network("https://4.bp.blogspot.com/-oWuizzMFoUU/WroX7jdk7vI/AAAAAAAABAo/0Wv26MWAc24c101YtdFT95a-hXH4_u7bgCLcBGAs/s1600/pinsdaddy-spring-mountain-flowers-meadow-with-green-grass-forest.jpg"),
            weddingbox("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxnF7B1E7OC8r2gZdCiYIjKU5hoR2bap03aNFqMpKbZQwq5ysC&s",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSV4QlRdKiPivVkAc39EyO3CRypmO3Rre13uhoTA9wEEKMEB7Dm&s"),

            weddingbox("https://images.fineartamerica.com/images/artworkimages/mediumlarge/1/thai-woman-bathing-in-the-river-sasin-tipchai.jpg",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScd88LU1YXZnvKiPlmj9yy65fWp9sSouJxwzxtaHoqWev8TEsa&s"),
          ],
          
        ),
      ),
    );
  }
}