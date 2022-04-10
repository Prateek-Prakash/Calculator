import 'package:calculator/views/calculator_view.dart';
import 'package:flutter/material.dart';
import 'package:get_it_hooks/get_it_hooks.dart';

class AppShellView extends HookWidget {
  const AppShellView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CalculatorView();
  }
}