import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      // Image(image: AssetImage("assets/image.jpeg")),
      Container(
        height: 150,
      ),
      ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            shadowColor: Colors.grey,
            padding: EdgeInsets.fromLTRB(10, 0, 10, 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          child: Text(
            questionText,
            style: TextStyle(
                color: Colors.blue[600],
                fontSize: 30,
                fontFamily: "Papyrus",
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ))
    ]);
  }
}
