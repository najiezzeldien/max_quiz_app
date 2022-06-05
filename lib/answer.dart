import 'package:flutter/material.dart';

class Answer extends StatefulWidget {
  Answer(this.selectHandler, this.answerTaxt);
  final Function selectHandler;
  final String answerTaxt;

  @override
  State<Answer> createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.blue,
        width: double.infinity,
        child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(
            widget.answerTaxt,
          ),
          onPressed: () {
            widget.selectHandler();
          },
        ),
      ),
    );
  }
}
