import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
      ),
      backgroundColor: Colors.white38,
      body: Column(
        children: [
          Row(
            children: [
              CalcKey(
                value: 'C',
                flex: 1,
                backgroundColor: Colors.blue.shade50,
                foregroundColor: Colors.grey.shade900,
              ),
              CalcKey(
                value: '±',
                flex: 1,
                backgroundColor: Colors.blue.shade50,
                foregroundColor: Colors.grey.shade900,
              ),
              CalcKey(
                value: '%',
                flex: 1,
                backgroundColor: Colors.blue.shade50,
                foregroundColor: Colors.grey.shade900,
              ),
              CalcKey(
                value: 'D',
                flex: 1,
                backgroundColor: Colors.blue.shade50,
                foregroundColor: Colors.grey.shade900,
              ),
            ],
          ),
          Row(
            children: [
              CalcKey(
                value: '7',
                flex: 1,
                backgroundColor: Colors.white,
                foregroundColor: Colors.grey.shade900,
              ),
              CalcKey(
                value: '8',
                flex: 1,
                backgroundColor: Colors.white,
                foregroundColor: Colors.grey.shade900,
              ),
              CalcKey(
                value: '9',
                flex: 1,
                backgroundColor: Colors.white,
                foregroundColor: Colors.grey.shade900,
              ),
              const CalcKey(
                value: '÷',
                flex: 1,
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
            ],
          ),
          Row(
            children: [
              CalcKey(
                value: '4',
                flex: 1,
                backgroundColor: Colors.white,
                foregroundColor: Colors.grey.shade900,
              ),
              CalcKey(
                value: '5',
                flex: 1,
                backgroundColor: Colors.white,
                foregroundColor: Colors.grey.shade900,
              ),
              CalcKey(
                value: '6',
                flex: 1,
                backgroundColor: Colors.white,
                foregroundColor: Colors.grey.shade900,
              ),
              const CalcKey(
                value: 'x',
                flex: 1,
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
            ],
          ),
          Row(
            children: [
              CalcKey(
                value: '1',
                flex: 1,
                backgroundColor: Colors.white,
                foregroundColor: Colors.grey.shade900,
              ),
              CalcKey(
                value: '2',
                flex: 1,
                backgroundColor: Colors.white,
                foregroundColor: Colors.grey.shade900,
              ),
              CalcKey(
                value: '3',
                flex: 1,
                backgroundColor: Colors.white,
                foregroundColor: Colors.grey.shade900,
              ),
              const CalcKey(
                value: '–',
                flex: 1,
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
            ],
          ),
          Row(
            children: [
              CalcKey(
                value: '0',
                flex: 1,
                backgroundColor: Colors.white,
                foregroundColor: Colors.grey.shade900,
              ),
              CalcKey(
                value: '•',
                flex: 1,
                backgroundColor: Colors.white,
                foregroundColor: Colors.grey.shade900,
              ),
              const CalcKey(
                value: '=',
                flex: 1,
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
              ),
              const CalcKey(
                value: '+',
                flex: 1,
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CalcKey extends StatelessWidget {
  const CalcKey({
    Key? key,
    required this.value,
    required this.flex,
    required this.backgroundColor,
    required this.foregroundColor,
  }) : super(key: key);

  final String value;
  final int flex;
  final Color backgroundColor;
  final Color foregroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4 * flex,
      padding: const EdgeInsets.all(5),
      height: MediaQuery.of(context).size.width / 4,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
        ),
        child: Text(
          value,
          style: TextStyle(color: foregroundColor, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        onPressed: () {},
      ),
    );
  }
}

class CalcService {
  static final CalcService _instance = CalcService._internal();

  factory CalcService() {
    return _instance;
  }

  CalcService._internal();

  double add(double a, double b) {
    return a + b;
  }

  double subtract(double a, double b) {
    return a - b;
  }

  double multiply(double a, double b) {
    return a * b;
  }

  double divide(double a, double b) {
    return a / b;
  }
}
