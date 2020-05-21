import 'package:flutter/material.dart';
import 'package:hello_flutter/answer.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
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
      {
        'questionText': "what's your favourite color?",
        'answers': ['Black', "white", "Green", 'White']
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
    // below uses named arguments
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Column(
          children: [
            Question(questionText: questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(
                selectHander: _answerQuestions,
                answer: answer,
              );  
            }).toList(),
          ],
        ),
      ),
    );
  }
}
