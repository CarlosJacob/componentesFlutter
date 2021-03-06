import 'package:componentes/scr/providers/menu_provider.dart';
import 'package:componentes/scr/utils/icono_string_util.dart';
import 'package:flutter_dynatrace/flutter_dynatrace.dart';
import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'alert_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
        centerTitle: true,
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargaData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        // print('builder');
        // print(snapshot.data);
        Dynatrace.identifyUser('Carlos Jacob');
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
        onTap: () {
          String _opcion = opt['texto'];
          Dynatrace.enterAction(
              parentAction: '0', parentActionName: "Click en $_opcion");
          print(Dynatrace.enterAction);
          Navigator.pushNamed(context, opt['ruta']);
          Dynatrace.leaveAction(parentAction: '0');
          // final route = MaterialPageRoute(builder: (context) => AlertPage());
          // Navigator.push(context, route);
        },
      );

      opciones..add(widgetTemp)..add(Divider());
    });

    return opciones;
  }
}
