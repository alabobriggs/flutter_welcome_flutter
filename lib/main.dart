import 'package:flutter/material.dart';

class Person {
  String name;
  int age;

  // use named arguments if you don't have to remm=emeber the position of each argument
  // because names arguments are optional you can assign default values
  // @required can be used in flutter to ensure a that a named variable is provided

  // A constructor runs once the class is called

  // Person({String inputName = "Max", int inputAge = 30}) {
  //   name = inputName;
  //   age = inputAge;
  // }

  Person(
      {this.name = "Max",
      this.age = 30}); // this will immediately update the value
}

var newPerson = Person(
  name: 'alabao',
  age: 3,
);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    // below uses named arguments
    return MaterialApp(
      home: Text("Hello world"),
    );
  }
}
