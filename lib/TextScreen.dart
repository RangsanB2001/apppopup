import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  const TextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 114, 56, 215),
        title: Text('Text Screen'),
      ),
      body: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('MSU',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.grey,
                  decoration: TextDecoration.underline,
                ),
                ),
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('informatics',
                   style: TextStyle(
                  fontSize: 40,
                  color: Colors.blue
                ),
                ),
              ],
            ),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('IT',
                 style: TextStyle(
                  fontSize: 40,
                  color: Colors.blue,
                  shadows: <Shadow>[
                Shadow(
                offset: Offset(6.0, 6.0),
                blurRadius: 3.0,
                color: Color.fromARGB(255, 226, 47, 47),
      ),
                Shadow(
                offset: Offset(6.0, 6.0),
                blurRadius: 8.0,
                color: Color.fromARGB(124, 255, 0, 106),
      ),
    ],
                ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}