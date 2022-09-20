import 'package:flutter/material.dart';
import 'package:projects/modules/home/home_screen.dart';
import 'package:projects/modules/login/login_screen.dart';
import 'package:projects/modules/messenger/messenger_screen.dart';
import 'package:projects/modules/users/users_screen.dart';
import 'modules/bmi_result/bmi_result_screen.dart';
import 'modules/bmi/bmi_screen.dart';
import 'modules/counter/counter_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
