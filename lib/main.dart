


import 'package:flutter/material.dart';
import 'package:bmi_calculator/Screen/InputData.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData.dark().copyWith(
        // primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        colorScheme: ColorScheme.light().copyWith( // to use the primaryColor
          primary: Color(0xFF0A0E21),
        ),
      ),
      // ThemeData(
      //   // primaryColor: const Color(0xFF0A0E21),
      //     scaffoldBackgroundColor: Color(0xFF0A1133),
      //   appBarTheme: AppBarTheme(
      //     backgroundColor: Color(0xFF0A0E21),
      //   ),
      //   textTheme: TextTheme(
      //     bodyMedium: TextStyle(color: Colors.white),
      //   )
      //   // accentColor: Colors.purple,
      // ),
      home: InputPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

