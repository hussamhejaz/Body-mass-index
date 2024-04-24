import 'package:flutter/material.dart';

import 'input_page.dart';
void main() => runApp(const BMI());

class BMI extends StatelessWidget {
  const BMI({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor:  const Color(0xFF0A0E22),
          scaffoldBackgroundColor: const Color(0xFF0A0E21),
          textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white))
      ),
      home: const InputPage(),
    );
  }
}
