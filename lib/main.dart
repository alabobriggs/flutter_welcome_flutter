import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "what's your favourite color?",
      "what's your favourite animal?",
    ];
    // below uses named arguments
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Column(
          children: [
            Text(questions[_questionIndex]),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: _answerQuestions,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: _answerQuestions,
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: _answerQuestions,
            ),
          ],
        ),
      ),
    );
  }
}
