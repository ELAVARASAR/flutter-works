import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Withphoto extends StatelessWidget {
  final String link;
  final String name;
  final String subtitle;
   Withphoto({Key? key,required this.link,required this.name,required this.subtitle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(leading: Image.asset(link,fit: BoxFit.cover,height: 40,width: 40,),title: Text(name),subtitle: Text(subtitle),trailing: Text("5.07"),);
    
  }
}