import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHander;
  final String answer;

  Answer({this.selectHander, this.answer});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answer),
        onPressed: selectHander,
      ),
    );
  }
}
