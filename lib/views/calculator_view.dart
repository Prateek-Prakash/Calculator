import 'package:calculator/widgets/calc_display.dart';
import 'package:calculator/widgets/calc_keypad.dart';
import 'package:flutter/material.dart';
import 'package:get_it_hooks/get_it_hooks.dart';

class CalculatorView extends HookWidget {
  const CalculatorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
      ),
      body: SafeArea(
        child: Column(
          children: const [
            CalcDisplay(),
            CalcKeypad(),
          ],
        ),
      ),
    );
  }
}
