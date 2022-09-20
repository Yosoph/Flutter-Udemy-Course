import 'package:flutter/material.dart';
import 'package:projects/home_screen.dart';
import 'package:projects/login_screen.dart';
import 'package:projects/messenger_screen.dart';
import 'package:projects/users_screen.dart';
import 'bmi_result_screen.dart';
import 'bmi_screen.dart';
import 'counter_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiScreen(),
    );
  }
}
