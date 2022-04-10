import 'package:flutter/material.dart';
import 'package:get_it_hooks/get_it_hooks.dart';

enum KeyType { input, operator, function }

class CalcKey extends HookWidget {
  const CalcKey({
    Key? key,
    required this.value,
    required this.flex,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.type,
  }) : super(key: key);

  final String value;
  final int flex;
  final Color backgroundColor;
  final Color foregroundColor;
  final KeyType type;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width - 10) / 4 * flex,
      padding: const EdgeInsets.all(5),
      height: (MediaQuery.of(context).size.width - 10) / 4,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
        ),
        child: Text(
          value,
          style: TextStyle(color: foregroundColor, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          print('Key Pressed: $value');
        },
      ),
    );
  }
}
