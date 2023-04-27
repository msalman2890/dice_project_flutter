import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String dice1Image = "assets/dice1.png";

  String dice2Image = "assets/dice1.png";

  void rollDice() {
    int randomNumber = Random().nextInt(6) + 1;
    int randomNumber2 = Random().nextInt(6) + 1;
    setState(() {
      dice1Image = "assets/dice$randomNumber.png";
      dice2Image = "assets/dice$randomNumber2.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Dice Roll Project"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                dice1Image,
                height: 120,
                width: 120,
              ),
              Image.asset(
                dice2Image,
                height: 120,
                width: 120,
              )
            ],
          ),
          ElevatedButton(
            onPressed: rollDice,
            child: Text(
              "Roll Dice",
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
