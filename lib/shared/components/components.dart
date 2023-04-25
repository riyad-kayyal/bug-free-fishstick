import 'package:flutter/material.dart';

Widget defaultButton({
  double width: double.infinity,
  required String text,
  required Function function,
  Color background: Colors.deepPurple,
  bool isUpperCase: true,
  double radius: 12.0,
  Color textColor : Colors.white
}) =>
    Container(
      // padding: const EdgeInsets.all(
      //   12,
      // ),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(
          radius,
        ),
      ),
      width: width,
      height: 47.0,
      child: MaterialButton(
        onPressed: () {},
        // height: 50.0,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
           color: textColor,
            fontSize: 20.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
