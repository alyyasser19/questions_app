import 'package:flutter/material.dart';
import '../Components/question.dart';
import '../Components/answers.dart';

class Quiz extends StatelessWidget {
  static const question = [
    "What is your name?",
    "What is your favorite color?",
    "What is your favorite animal?",
    "What is your favorite food?",
    "What is your favorite sport?",
    "What is your favorite movie?",
    "What is your favorite book?"
  ];

  static const answers = [
    ["John", "Jane", "Mary"],
    ["Red", "Blue", "Green"],
    ["Dog", "Cat", "Horse"],
    ["Pizza", "Pasta", "Sushi"],
    ["Football", "Basketball", "Baseball"],
    ["Star Wars", "Lord of the Rings", "Harry Potter"],
    ["Harry Potter", "Lord of the Rings", "Star Wars"]
  ];

  final int currentQuestion;
  final Function onAnswer;

  const Quiz({
    required this.currentQuestion,
    required this.onAnswer,
    Key ? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  <Widget>[
        Question(question[currentQuestion]),
        Answers( onAnswer,answers[currentQuestion]),
      ],
    );
  }
}
