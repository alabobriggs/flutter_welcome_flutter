import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text('Yo have do it'),
      FlatButton(onPressed: null, child: Text("Reset"))
    ]));
  }
}
