import 'package:flutter/material.dart';
//importandos
//import 'package:componentes/scr/pages/home_temp.dart';
import 'package:componentes/scr/pages/home_pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      home: HomePages(),
    );
  }
}
