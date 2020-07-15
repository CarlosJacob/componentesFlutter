import 'package:flutter/material.dart';
//importandos
import 'package:componentes/scr/folder/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      home: HomePageTemp(),
    );
  }
}
