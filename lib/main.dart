import 'package:flutter/material.dart';
import 'package:flutter_first/result.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() { 
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0, _totalScore = 0;
  final _questions = const [
    {
      'questionText':
          'The min. no. of comparisons required to determine if an integer appears more than n/2 times in a sorted array of n integers is',
      'answers': [
        {'text': 'Ο(1)', 'score': 0},
        {'text': 'Ο(n)', 'score': 0},
        {'text': 'Ο(logn)', 'score': 10},
        {'text': 'Ο(n2)', 'score': 0}
      ]
    },
    {
      'questionText': 'Which of the following correctly declares an array?',
      'answers': [
        {'text': 'int arr[20];', 'score': 10},
        {'text': 'int arr;', 'score': 0},
        {'text': 'arr{20};', 'score': 0},
        {'text': 'array arr[20];', 'score': 0}
      ]
    },
    {
      'questionText':
          'Which of the following sorting algorithms can be used to sort a random linked list with minimum time complexity?',
      'answers': [
        {'text': 'Insertion Sort', 'score': 0},
        {'text': 'Quick Sort', 'score': 0},
        {'text': 'Heap Sort', 'score': 0},
        {'text': 'Merge Sort', 'score': 10}
      ]
    },
    {
      'questionText':
          'Which one of the following is an application of Stack Data Structure?',
      'answers': [
        {'text': 'Managing function calls', 'score': 0},
        {'text': 'The stock span problem', 'score': 0},
        {'text': 'Arithmetic expression evaluation', 'score': 0},
        {'text': 'All of the above', 'score': 10}
      ]
    },
    {
      'questionText':
          'What is the worst case time complexity of linear search algorithm?',
      'answers': [
        {'text': 'Ο(1)', 'score': 0},
        {'text': 'Ο(n)', 'score': 0},
        {'text': 'Ο(logn)', 'score': 10},
        {'text': 'Ο(nlogn)', 'score': 0}
      ]
    },
    {
      'questionText':
          'What data structure is used for depth first traversal of a graph?',
      'answers': [
        {'text': 'Queue', 'score': 0},
        {'text': 'Stack', 'score': 10},
        {'text': 'List', 'score': 0},
        {'text': 'None of the above', 'score': 0}
      ]
    },
    {
      'questionText':
          'Which of the following searching techniques do not require the data to be in sorted form',
      'answers': [
        {'text': 'Binary Search', 'score': 0},
        {'text': 'Interpolation Search', 'score': 0},
        {'text': 'Linear Search', 'score': 10},
        {'text': 'All of the above', 'score': 0}
      ]
    },
    {
      'questionText': 'A queue data-structure can be used for −',
      'answers': [
        {'text': 'Expression parsing', 'score': 0},
        {'text': 'Recursion', 'score': 0},
        {'text': 'Resource allocation', 'score': 10},
        {'text': 'All of the above', 'score': 0}
      ]
    },
    {
      'questionText':
          'The following sorting algorithms maintain two sub-lists, one sorted and one to be sorted −',
      'answers': [
        {'text': 'Selection Sort', 'score': 0},
        {'text': 'Insertion Sort', 'score': 0},
        {'text': 'Merge Sort', 'score': 0},
        {'text': 'Both A and B', 'score': 10}
      ]
    },
    {
      'questionText':
          'The worst case complexity of binary search matches with −',
      'answers': [
        {'text': 'Interpolation search', 'score': 0},
        {'text': 'Linear search', 'score': 10},
        {'text': 'Merge Sort', 'score': 0},
        {'text': 'None of the above', 'score': 0}
      ]
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestions(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print('_questionIndex:$_questionIndex');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestions: _answerQuestions,
                questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
