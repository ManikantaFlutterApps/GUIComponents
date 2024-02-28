import 'package:flutter/material.dart';

import 'Screens/CheckBoxDemo.dart';
import 'Screens/DropDownDemo.dart';
import 'Screens/RadioButtonDemo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "GUI Components",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),),
      home: DropDownDemo(),
    );
  }

}