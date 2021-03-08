import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        //margin: EdgeInsets.all(10),
        child: ElevatedButton(
          child: Text(answerText),
          onPressed: selectHandler,
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            shadowColor: Colors.blue,
            elevation: 5.0,
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              letterSpacing: 1.5,
              fontWeight: FontWeight.bold,
              fontFamily: 'papyrus',
            ),
            padding: EdgeInsets.all(7.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ));
  }
}
