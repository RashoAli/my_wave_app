import 'package:flutter/material.dart';
import 'LoginRegisterPage.dart';

void main(){
  runApp(new WaveApp());
}


class WaveApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Wave App',
      theme: new ThemeData(
        primarySwatch : Colors.blue,
      ),
      home : LoginRegesterPage(),
    );
  }
}
