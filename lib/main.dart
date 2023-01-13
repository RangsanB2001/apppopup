import 'package:flutter/material.dart';
import 'Iconscreen.dart';
import 'TextScreen.dart';
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
        routes: {
          'Icon':(context) => const IconPage(),
          'Text':(context) => const TextPage()
        }
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
        leading: Icon(Icons.access_time_outlined),
        title: Text('Popup Hey'),
        centerTitle: true,
        actions: [
          PopupMenuButton(

            onSelected: (value) {
              setState(() {
                menuName=value.toString();
              });
            Navigator.pushNamed(context, value.toString());
              /*
              if(value.toString()=='Icon'){
                  Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => IconPage()
                  ),
                  ));

              }else if(value.toString()=='Text'){
                 Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => TextPage()
                  ),
                  ));
              }
              */
            },
            
            itemBuilder:(BuildContext bcon){
                return [
                  PopupMenuItem(child: Text('ViewIcon'),
                  value: 'Icon'),
                  PopupMenuItem(child: Text('ViewText'),
                  value: 'Text'),
                ];
            }
            
            )
        ],
      ),
      body: Center(
        child: Image.network('https://cdn.shopify.com/s/files/1/0014/2648/9388/products/ultra-tokyo-connection-pvc-scale-figures-jojo-s-bizarre-adventure-part-3-jotaro-kujo-chozokado-big-figure-29489705877548_900x900.jpg'
        , height: 350, 
          width: 350,),
      ),
    );
  }
}