import 'package:calculator/vms/calculator_vm.dart';
import 'package:flutter/material.dart';
import 'package:get_it_hooks/get_it_hooks.dart';

class CalcDisplay extends HookWidget {
  const CalcDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: const Color(0xFF303952),
          child: Center(
            child: Text(
              useWatchOnly((CalculatorVM calculatorVM) => calculatorVM.input),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
