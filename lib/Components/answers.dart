import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function selectHandler;
  final List<String> answers;

  const Answers(this.selectHandler, this.answers,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: answers.map((answer) {
        return SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            child: Text(answer),
            onPressed: () => selectHandler(answer),
            style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey,
                textStyle:
                const TextStyle(fontSize: 12)),
          ),
        );
      }).toList(),

    );
  }
}
