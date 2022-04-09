import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final List answers;

  const Results(this.answers, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text("You have finished the quiz!"),
        Text("Your answers: " + answers.map((e) =>
            e.toString()).join(", ")),
      ],
    );
  }
}
