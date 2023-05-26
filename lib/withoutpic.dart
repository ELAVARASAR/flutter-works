import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Withoutphoto extends StatelessWidget {
  final String name;
  final String subtitle;
   Withoutphoto({Key? key,required this.name,required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ListTile(leading:Icon(Icons.person,size: 40,),title: Text(name),subtitle: Text(subtitle),trailing: Text("5.07"),);
    
  }
}