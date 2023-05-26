import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mmain/withoutpic.dart';
import 'package:mmain/withphoto.dart';

void main(){
  runApp(myapp());
}
class myapp extends StatefulWidget {
  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  //List name=["eloo","godwin","danny","deepak","dhina","babu","sam"];
 // List photo=["1.jpg","2.jpg","3.jpg","4.jpg","5.jpg"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home()
    );
  }
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(      appBar: AppBar(
          title: Text(
            "eloo",
            style: TextStyle(color: Colors.yellow),
          ),
          centerTitle: true,
        ),
        drawer: Drawer(
          backgroundColor: Colors.purple,
          child: ListView.builder(
              itemCount: 12,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(
                    Icons.person_rounded,
                    size: 30,
                    color: Colors.red,
                  ),
                  title: Text(
                    "Eloo",
                    style: TextStyle(fontSize: 30),
                  ),
                  trailing: Icon(Icons.send),
                );
              }),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Withphoto(link: "images/1.jpg", name: "Eloo", subtitle: "Student"),
            Withoutphoto(name: "godwin", subtitle: "Developer"),
            Withphoto(link: "images/2.jpg", name: "Dhina", subtitle: "Student"),
           Withphoto(link: "images/3.jpg", name: "deepak", subtitle: "Student"),
          ]),
        ),
      );
    
  }
}
