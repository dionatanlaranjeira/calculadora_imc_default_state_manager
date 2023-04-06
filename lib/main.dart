import 'package:calculadora_imc_default_state_manager/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Default State Manager',
      theme: ThemeData(),
      home: const HomePage(),
    );
  }
}
