import 'package:componentes/scr/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    // return ListView(
    //   children: _listaItems(),
    // );

    print(menuProvider.opciones);
  }

  List<Widget> _listaItems() {
    return [
      ListTile(
        title: Text('HolaMundo'),
      ),
      Divider(),
      ListTile(
        title: Text('HolaMundo'),
      ),
      ListTile(
        title: Text('HolaMundo'),
      )
    ];
  }
}
