import 'package:flutter/material.dart';
import 'package:hello_flutter/quiz.dart';
import 'package:hello_flutter/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': "what's your favourite color?",
      'answers': [{ 'Black'}, "white", "Green", 'White']
    },
    {
      'questionText': "what's your favourite animal?",
      'answers': ['Dog', "Rabbit", "Snake", 'Cat']
    },
    {
      'questionText': "who's your favourite Instructor ?",
      'answers': ['Max', "John", "Doe", 'Mic']
    },
  ];
  var _questionIndex = 0;

  void _answerQuestions() {
    if (_questionIndex <= _questions.length - 1) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }
    print(_questionIndex);
    print(_questions.length);
  }

  @override
  Widget build(BuildContext context) {
    // below uses named arguments
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: _questionIndex <= _questions.length - 1
            ? Quiz(
                questionIndex: _questionIndex,
                questions: _questions,
                answerQuestions: _answerQuestions,
              )
            : Result(),
      ),
    );
  }
}
