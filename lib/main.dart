// ignore_for_file: unused_field, prefer_final_fields, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Testing(),
    );
  }
}

class Testing extends StatefulWidget {
  const Testing({super.key});

  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  int _index = 0;
  var _jokes = [
    {
      "question": "What does a baby computer call its father?",
      "answer": "Data"
    },
    {
      "question": "What's a pencil with two erasers called?",
      "answer": "Pointless"
    },
    {
      "question": "Why is the calendar always scared?",
      "answer": "Because it's days are numbered"
    },
    {"question": "What do you call a fish with no eye", "answer": "Fsh"},
    {
      "question": "What did the fish say when he swam into a wall?",
      "answer": "Dam"
    },
    {
      "question": "What do you call a can opener that does not work?",
      "answer": "A can't opener!"
    },
    {
      "question": "Did you hear about the Italian chef who died?",
      "answer": "He pasta-way"
    },
    {
      "question": "What is Forrest Gump's email password?",
      "answer": "1forrest1"
    },
    {"question": "What's red and bad for your teeth?", "answer": "A brick"},
    {"question": "What do you call a fake noodle?", "answer": "An impasta"},
    {"question": "Why don't dinosaurs talk?", "answer": "Because they're dead"},
    {"question": "What do you call a fly with no wings?", "answer": "A walk"},
    {
      "question": "What did the janitor say when he jumped out of the closet?",
      "answer": "“Supplies!”"
    },
    {
      "question": "How can you find Will Smith in the snow?",
      "answer": "Follow the fresh prints"
    },
    {
      "question": "What does a clock do when it's hungry?",
      "answer": "It goes back four seconds"
    },
    {
      "question": "What do you call a belt made of watches?",
      "answer": "A waist of time!"
    },
    {
      "question": "Why did Adele cross the road?",
      "answer": "o say hello from the other side!"
    },
    {
      "question": "How do you organize an astronomer's party?",
      "answer": "You planet"
    },
    {"question": "What's the action like at a circus?", "answer": "In-tents"},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                _jokes[_index]["question"] as String,
                style: TextStyle(
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                '${_jokes[_index]["answer"]}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        _index--;
                        _index += _jokes.length;
                        _index %= _jokes.length;
                      });
                    },
                    child: Icon(
                      Icons.arrow_back_rounded,
                      size: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        _index++;
                        _index %= _jokes.length;
                      });
                    },
                    child: Icon(
                      Icons.arrow_forward_rounded,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
