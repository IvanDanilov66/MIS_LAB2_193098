import 'package:flutter/material.dart';

import './clothes_question.dart';
import './clothes_answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  void _iWasTapped() {
    setState(() {
      _questionIndex += 1;
    });
    print("I was tapped");
  }

  var questions = [
    {
      'question': "Izberete prodavnica za obleka",
      'answer': [
        'Zara',
        'Bershka',
        'Pull and Bear',
        'H&M',
      ],
    },
    {
      'question': "Kolekcija",
      'answer': [
        'Zimna kolekcija',
        'Proletna kolekcija',
        'Letna kolekcija',
        'Esenska kolekcija',
      ],
    },
    {
      'question': "Vid na obleka",
      'answer': [
        'Maici',
        'Jakni',
        'Pantaloni',
        'Kosuli',
        'Ostanato'
      ],
    },
  ];
  var _questionIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hallo World"),
        ),
        body: Container(
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClothesQuestion(questions[_questionIndex]['question']),
              ...(questions[_questionIndex]['answer'] as List<String>).map((answer) {
                return ClothesAnswer(_iWasTapped, answer);
              })
            ],
          ),
        ),
      ),
    );
  }
}
