import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Component temp'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Soy un ListTile Title'),
          ),
          Divider(),
          ListTile(
            title: Text('Soy un ListTile Title'),
          ),
          Divider(),
          ListTile(
            title: Text('Soy un ListTile Title'),
          ),
        ],
      ),
    );
  }
}
