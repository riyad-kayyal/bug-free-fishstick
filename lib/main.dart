import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:newpro/modules/users/users_screen.dart';
import 'dart:ui';
import 'modules/log_in/LogIn.dart';
import 'modules/bmi_result/bmi_results.dart';
import 'modules/counter/counter_screen.dart';
import 'modules/bmi_app/bmi_calculator.dart';

void main() => runApp(
      NewApp(),
    );

class NewApp extends StatelessWidget {
  //const ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //   theme: ThemeData(
      //    useMaterial3: true,
      // ),
      home: BMICalcScreen(),
    );
  }
}
