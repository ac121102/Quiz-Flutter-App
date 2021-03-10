import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandlar;

  Result(this.resultScore, this.resetHandlar);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 30) {
      resultText = 'You are Bad!\n Score : $resultScore/100\n';
    } else if (resultScore <= 50) {
      resultText = 'You are Good!\n Score : $resultScore/100\n';
    } else if (resultScore <= 80) {
      resultText = 'You are Great!\n Score : $resultScore/100\n';
    } else {
      resultText = 'You are awasome!\n Score : $resultScore/100\n';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Container(height: 100),
        Text(
          resultPhrase,
          style: TextStyle(
              color: Colors.blue,
              fontSize: 35,
              fontWeight: FontWeight.normal,
              fontFamily: "Times New Roman"),
          textAlign: TextAlign.center,
        ),
        Text(
          "Correct Answers are:\nΟ(logn)\nint arr[20];\nMerge Sort\nAll of the above\nΟ(n)\nStack\nBinary Search\nResource allocation\nBoth A and B\nLinear search\n\n",
          style: TextStyle(
              color: Colors.blueAccent[400],
              fontSize: 20,
              fontWeight: FontWeight.normal,
              fontFamily: "papyrus"),
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: resetHandlar,
          style: ElevatedButton.styleFrom(
            elevation: 10,
            padding: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          child: Text(
            'Restart Quiz!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ]),
    );
  }
}
