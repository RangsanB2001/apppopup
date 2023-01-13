import 'package:flutter/material.dart';

void main() {
  runApp(Apppopup());
}

class Apppopup extends StatelessWidget {
  const Apppopup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.purple
        ),
        home: pupupmenu(),
       /* routes: {
          'Icon':(context) => const IconScreen(),
          'Text':(context) => const TextScreen()
        }*/
    );
  }
}

class pupupmenu extends StatefulWidget {
  const pupupmenu({super.key});

  @override
  State<pupupmenu> createState() => _pupupmenuState();
}

class _pupupmenuState extends State<pupupmenu> {

  var menuName='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.add_box_outlined),
        title: Text('Popup Hey'),
        centerTitle: true,
        actions: [
          PopupMenuButton(

            onSelected: (value) {
              setState(() {
                menuName=value.toString();
              });
            },
            
            itemBuilder:(BuildContext bcon){
                return [
                  PopupMenuItem(child: Text('Icon Page'),
                  value: 'Icon'),
                  PopupMenuItem(child: Text('Massage Page'),
                  value: 'Massage'),
                  PopupMenuItem(child: Text('Proflie'),
                  value: 'Proflie')
                ];
            }
            
            )
        ],
      ),
      body: Center(
        child: Container(
          child: Text(menuName, 
          style: TextStyle(fontSize: 40),
          ),
          ),
      ),
    );
  }
}