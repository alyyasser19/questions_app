import "package:flutter/material.dart";
import './Screens/quiz.dart';
import './Screens/results.dart';

main() {
runApp(const QuizApp());
}


class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {

  var  userAnswers = [];
  var currentQuestion = 0;
  bool finished = false;

  void onAnswer(String answer) {
    if(currentQuestion < 6) {
      setState(() {
        userAnswers.add(answer);
        currentQuestion++;
      });
    } else {
      setState(() {
        finished = true;
        userAnswers.add(answer);
      });
    }
  }

  @override
  build(BuildContext context){
    return MaterialApp(
      title: "Quiz App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My Quiz App"),
        ),
        body: Center(
          child: !finished ? (
          Quiz(
            currentQuestion: currentQuestion,
            onAnswer: onAnswer,
          )
          ) :
          Results(userAnswers)
        ),
      ),
    );
  }

}