import 'package:flutter/material.dart';
import 'bmi_code.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      title: 'BMI Calculator',
      home: BMICode(),
    );
  }
}