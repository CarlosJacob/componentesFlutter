import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Avatar Pages'),
          actions: <Widget>[
            Container(
              padding: EdgeInsets.all(6.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://avatars1.githubusercontent.com/u/37249495?s=460&u=ea6054ef8c1dedfc6ec95f56a316c5177ebb97aa&v=4'),
                radius: 23.0,
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                child: Text("CJ"),
                backgroundColor: Colors.brown,
              ),
            )
          ],
        ),
        body: Center(
          child: FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'http://mainsoft.cl/noticias/kickoff-chile-2020-int01.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
          ),
        ));
  }
}
