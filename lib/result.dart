import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  Result(
    this.resultScore,
    this.resetQuiz,
  );
  final int resultScore;
  final Function resetQuiz;
  String get resultPhrase {
    var resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    }
    if (resultScore <= 12) {
      resultText = 'Pretty likeable';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: () {
              resetQuiz();
            },
            child: const Text(
              'Restart Quiz!',
            ),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
