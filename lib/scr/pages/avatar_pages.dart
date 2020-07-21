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
                    'https://dfjc3etzov2zz.cloudfront.net/wp-content/uploads/2018/04/Mark-Zuckerberg-Forbes.jpg'),
                radius: 23.0,
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                child: Text("SL"),
                backgroundColor: Colors.brown,
              ),
            )
          ],
        ),
        body: Center(
          child: FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://www.incimages.com/uploaded_files/image/1920x1080/getty_490038758_239886.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
          ),
        ));
  }
}
