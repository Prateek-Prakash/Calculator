import 'package:calculator/views/app_shell_view.dart';
import 'package:calculator/vms/app_shell_vm.dart';
import 'package:calculator/vms/calculator_vm.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupGetIt() {
  getIt.registerSingleton(AppShellVM());
  getIt.registerSingleton(CalculatorVM());
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        fontFamily: 'Comfortaa',
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark,
        primaryColor: const Color(0xFF181A20),
        canvasColor: const Color(0xFF181A20),
        cardColor: const Color(0xFF262A34),
        dialogBackgroundColor: const Color(0xFF262A34),
      ),
      home: const AppShellView(),
    );
  }
}
