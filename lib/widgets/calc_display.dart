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
          child: Container(),
        ),
      ),
    );
  }
}
