import 'package:flutter/material.dart';

class IconPage extends StatelessWidget {
  const IconPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 114, 56, 215),
        title: Text('Icon Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.home, color: Colors.red,),
                Icon(Icons.home, color: Colors.green,),
                Icon(Icons.home, color: Colors.blue,),
                Icon(Icons.home, color: Colors.yellow,),
                Icon(Icons.home, color: Colors.pink,),
              ],
            ),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.favorite_border, color: Colors.red,),
                Icon(Icons.favorite_border, color: Colors.green,),
                Icon(Icons.favorite_border, color: Colors.blue,),
                Icon(Icons.favorite_border, color: Colors.yellow,),
                Icon(Icons.favorite_border, color: Colors.pink,),
              ],
            ),
              Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.man, color: Colors.red,),
                Icon(Icons.man, color: Colors.green,),
                Icon(Icons.man, color: Colors.blue,),
                Icon(Icons.man, color: Colors.yellow,),
                Icon(Icons.man, color: Colors.pink,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}