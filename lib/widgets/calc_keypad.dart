import 'package:calculator/widgets/calc_key.dart';
import 'package:flutter/material.dart';
import 'package:get_it_hooks/get_it_hooks.dart';

class CalcKeypad extends HookWidget {
  const CalcKeypad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          Row(
            children: [
              CalcKey(
                value: 'C',
                flex: 1,
                backgroundColor: Colors.blue.shade100,
                foregroundColor: Colors.grey.shade900,
                type: KeyType.function,
              ),
              CalcKey(
                value: '±',
                flex: 1,
                backgroundColor: Colors.blue.shade100,
                foregroundColor: Colors.grey.shade900,
                type: KeyType.function,
              ),
              CalcKey(
                value: '%',
                flex: 1,
                backgroundColor: Colors.blue.shade100,
                foregroundColor: Colors.grey.shade900,
                type: KeyType.function,
              ),
              const CalcKey(
                value: 'D',
                flex: 1,
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                type: KeyType.function,
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
                type: KeyType.input,
              ),
              CalcKey(
                value: '8',
                flex: 1,
                backgroundColor: Colors.white,
                foregroundColor: Colors.grey.shade900,
                type: KeyType.input,
              ),
              CalcKey(
                value: '9',
                flex: 1,
                backgroundColor: Colors.white,
                foregroundColor: Colors.grey.shade900,
                type: KeyType.input,
              ),
              const CalcKey(
                value: '÷',
                flex: 1,
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                type: KeyType.operator,
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
                type: KeyType.input,
              ),
              CalcKey(
                value: '5',
                flex: 1,
                backgroundColor: Colors.white,
                foregroundColor: Colors.grey.shade900,
                type: KeyType.input,
              ),
              CalcKey(
                value: '6',
                flex: 1,
                backgroundColor: Colors.white,
                foregroundColor: Colors.grey.shade900,
                type: KeyType.input,
              ),
              const CalcKey(
                value: 'x',
                flex: 1,
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                type: KeyType.operator,
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
                type: KeyType.input,
              ),
              CalcKey(
                value: '2',
                flex: 1,
                backgroundColor: Colors.white,
                foregroundColor: Colors.grey.shade900,
                type: KeyType.input,
              ),
              CalcKey(
                value: '3',
                flex: 1,
                backgroundColor: Colors.white,
                foregroundColor: Colors.grey.shade900,
                type: KeyType.input,
              ),
              const CalcKey(
                value: '–',
                flex: 1,
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                type: KeyType.operator,
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
                type: KeyType.input,
              ),
              CalcKey(
                  value: '.',
                  flex: 1,
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.grey.shade900,
                  type: KeyType.input),
              const CalcKey(
                value: '=',
                flex: 1,
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
                type: KeyType.function,
              ),
              const CalcKey(
                value: '+',
                flex: 1,
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                type: KeyType.operator,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
