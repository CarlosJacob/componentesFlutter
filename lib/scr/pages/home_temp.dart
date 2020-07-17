import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco', 'Seis'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Component Temp'),
      ),
      body: ListView(
        // children: _createItems(),
        children: _crearItemCorta(),
      ),
    );
  }

  //opción uno para los itmes en lista
  List<Widget> _createItems() {
    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
        subtitle: Text('opciones disponibles'),
      );
      lista
        ..add(tempWidget)
        ..add(Divider(
          color: Colors.blue,
          height: 50.0,
          thickness: 10,
        ));
    }

    return lista;
  }

  //opción dos para los itmes en lista se cree que es más corta la respuesta
  List<Widget> _crearItemCorta() {
    return opciones
        .map(
          (items) => Column(
            children: <Widget>[
              ListTile(
                title: Text(items),
                subtitle: Text('somos cualquiercosa'),
                leading: Icon(Icons.account_balance_wallet),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {},
              ),
              Divider(
                color: Colors.blue,
              ),
            ],
          ),
        )
        .toList();
  }
}
