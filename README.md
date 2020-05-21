# hello_flutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Notes

- Every widget is a dart class that has a build method

- use named arguments if you don't have to remm=emeber the position of each argument
- because names arguments are optional you can assign default values
- @required can be used in flutter to ensure a that a named variable is provided
- A constructor runs once the class is called

- Normal class

```dart
  Person({String inputName = "Max", int inputAge = 30}) {
  name = inputName;
  age = inputAge;
  }
```

- Class with constructor

```dart
  class Person {
  String name;
  int age;


  Person(
  {this.name = "Max",
  this.age = 30}); // this will immediately update the value
  }

  var newPerson = Person(
  name: 'alabao',
  age: 3,
  );`
```

- You can user function short hand as `void main() => runApp(myApp())`

- Add leading underscore to make a private property `_MyApp`

- Adding `const` before variables means that you cannot modify the value of the variable. eg, if a var is equally to an object tith 1 item you can't chnage it to 2 items

```dart
  var hello = const ['name']

  hello.add('mac') // this will through and error

  hello = [] // this will work because you are not trying to modify the list
```
