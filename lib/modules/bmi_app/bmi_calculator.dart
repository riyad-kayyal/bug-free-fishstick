import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:math';

import 'package:newpro/modules/bmi_result/bmi_results.dart';
import 'package:newpro/modules/bmi_app/bmi_calculator.dart';

class BMICalcScreen extends StatefulWidget {
  @override
  _BMICalcScreenState createState() => _BMICalcScreenState();
}

// our color:  color: Color(0xFC1a1a2c).withOpacity(0.7),
class _BMICalcScreenState extends State<BMICalcScreen> {
  Color unpressedcolor = Color(0xFC1a1a2c).withOpacity(0.7);
  Color pressedcolor = Color(0xFFe8134a);
  bool isMale = true;
  double height = 120.0;
  int weight = 40;
  int age = 18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF101322),
      appBar: AppBar(
        elevation: 0.6,
        backgroundColor: Color(0xFF101322),
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
        children: [
          // part 01 -----------> Male and Female
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  // Male
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                          color: isMale ? pressedcolor : unpressedcolor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/male.png',
                              height: 60.0,
                              width: 60.0,
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.7),
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                const   SizedBox(
                    width: 20.0,
                  ),
                  // Female
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            isMale = false;
                          },
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                          color: !isMale ? pressedcolor : unpressedcolor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/female.png',
                              height: 60.0,
                              width: 60.0,
                            ),
                          const   SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.7),
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // part 02 ------------> Height
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFC1a1a2c).withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Height as a word
                    Text(
                      'HEIGHT ',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 20.0,
                      ),
                    ),
                    Row(
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${height.round()}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 45.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        // the unit ( cm )
                        Text(
                          'cm',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                    // Height as a var(number)(digit)
                    Slider(
                      value: height,
                      max: 220.0,
                      min: 80.0,
                      activeColor: const Color(0xFFe8134a),
                      inactiveColor: const Color(0xFFf1f1f4).withOpacity(0.2),
                      onChanged: (value) {
                        setState(
                          () {
                            height = value;
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          // part 03 -------------> Weight and age
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFC1a1a2c).withOpacity(0.7),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Weight
                          Text(
                            'WEIGHT ',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 20.0,
                            ),
                          ),
                          // weight as a var ( number)(digit)
                          Text(
                            '$weight',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 45.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: 'weightremove',
                                onPressed: () {
                                  setState(
                                    () {
                                      weight--;
                                    },
                                  );
                                },
                                backgroundColor: Color(0xFF414454),
                                //focusColor: Color(0xFFe8134a),
                                mini: true,
                                child: const Icon(
                                  Icons.remove,
                                  size: 30.0,
                                ),
                              ),
                              FloatingActionButton(
                                heroTag: 'weightadd',
                                onPressed: () {
                                  setState(
                                    () {
                                      weight++;
                                    },
                                  );
                                },
                                backgroundColor: Color(0xFF414454),
                                //focusColor: Color(0xFFe8134a),
                                mini: true,
                                child:const  Icon(
                                  Icons.add,
                                  size: 30.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                 const  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFC1a1a2c).withOpacity(0.7),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Weight
                          Text(
                            'AGE',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 20.0,
                            ),
                          ),
                          // weight as a var ( number)(digit)
                          Text(
                            '$age',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 45.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: 'ageremove',
                                onPressed: () {
                                  setState(
                                    () {
                                      age--;
                                    },
                                  );
                                },
                                backgroundColor: const Color(0xFF414454),
                                //focusColor: Color(0xFFe8134a),
                                mini: true,
                                child: const Icon(
                                  Icons.remove,
                                  size: 30.0,
                                ),
                              ),
                              FloatingActionButton(
                                heroTag: 'ageadd',
                                onPressed: () {
                                  setState(
                                    () {
                                      age++;
                                    },
                                  );

                                },
                                backgroundColor: const Color(0xFF414454),
                                //focusColor: Color(0xFFe8134a),
                                mini: true,
                                child: const Icon(
                                  Icons.add,
                                  size: 30.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // part 04 --------------> button Calculate
          Container(
            width: double.infinity,
            color: const Color(0xFFe8134a),
            child: CupertinoButton(
              child: const Text(
                'CALCULATE',
                style: TextStyle(
                  color: Color(0xFFf1f1f4),
                  fontSize: 27.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onPressed: () {
                var result = weight / pow(height/100, 2);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BMIResultScreen(
                      age: age,
                      isMale: isMale,
                      result: result.round(),
                    ),
                    ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// The Operation " the Logic " ____________________________________________________________________________________
// *********+
// ***    **+
// ***    **+
// *********+s
// *********+
// **
// **
// var result = weight / pow(height/100, 2);
// print (result.round());
