import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
class BMIResultScreen extends StatelessWidget {

     final int result;
     final bool isMale;
     final int age;
     BMIResultScreen({
       required this.age,
       required this.isMale,
       required this.result,

});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF101322),
    appBar: AppBar(
    elevation: 0.6,
    backgroundColor:const  Color(0xFF101322),
    leading: IconButton(
      icon: const Icon(
        Icons.keyboard_arrow_left_sharp,
        color: Colors.red,
        size: 39.0,
      ), onPressed: () {
        Navigator.pop(context);
    },
    ),
    title: const Center(
    child: Padding(
    padding: EdgeInsets.symmetric(
    vertical: 15.0,
    horizontal: 12.0,
    ),
    child: Text(
    'BMI CALCULATOR',
    style: TextStyle(
    color: Colors.white,
    fontSize: 22.0,
    fontWeight: FontWeight.w500,
    ),
    ),
    ),
    ),
    ),
         
         body: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             const Text(
               'Your Result',
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 45.0,
                 fontWeight: FontWeight.w800,
               ),
             ),
             Expanded(
               child: Center(
                 child: Container(
                   height: 500.0,
                   width: 350.0,
                   decoration: BoxDecoration(
                     color: Color(0xFC1a1a2c).withOpacity(0.7),
                     borderRadius: BorderRadius.circular(10.0),
                   ),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children:
                     [
                       Text(
                         ' Gender: ${isMale ? 'Male' : 'female'}',
                         style:  const  TextStyle(
                           fontSize: 22.0,
                           fontWeight: FontWeight.bold,
                           color: Colors.white,
                         ),
                       ),
                       Text(
                         ' Results: $result',
                         style:  const  TextStyle(
                           fontSize: 22.0,
                           fontWeight: FontWeight.bold,
                           color: Colors.white,
                         ),
                       ),
                       Text(
                         ' Age: $age',
                         style:  const  TextStyle(
                           fontSize: 22.0,
                           fontWeight: FontWeight.bold,
                           color: Colors.white,
                         ),
                       ),

                     ],
                   ),
                 ),
               ),
             ),
             Container(
               width: double.infinity,
               color: const Color(0xFFe8134a),
               child: CupertinoButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const   Text('Re-Calculate ',
                        style: TextStyle(
                          color: Color(0xFFf1f1f4),
                          fontSize: 27.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
               ),
             ),

           ],
         ),
    );
  }
}
