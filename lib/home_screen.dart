import 'package:flutter/material.dart';
import 'package:calculator_app/components/my_button.dart';
import 'package:calculator_app/constant.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = '';
  var answer = '';
  bool isResultDisplayed = false; // Flag to track if the result has been shown

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        userInput.toString(),
                        style:
                            const TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      Text(
                        answer.toString(),
                        style:
                            const TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MyButton(
                          title: 'AC',
                          onPress: () {
                            userInput = '';
                            answer = '';
                            isResultDisplayed = false; // Reset result display flag
                            setState(() {});
                          },
                        ),
                        const SizedBox(width: 10),
                        MyButton(
                          title: '+/-',
                          onPress: () {
                            if (userInput.isNotEmpty) {
                              // Check if the last character is a number or a sign
                              if (RegExp(r'[-+]?\d*\.?\d+').hasMatch(userInput)) {
                                // If it's a number (positive or negative), toggle its sign
                                if (userInput.startsWith('-')) {
                                  // If the number is negative, make it positive
                                  userInput = userInput.substring(1); // Remove the leading minus sign
                                } else {
                                  // If the number is positive, make it negative
                                  userInput = '-' + userInput; // Add a minus sign at the beginning
                                }
                              }
                            }
                            setState(() {});
                          },
                        ),
                        const SizedBox(width: 10),
                        MyButton(
                          title: '%',
                          onPress: () {
                            userInput += '%';
                            setState(() {});
                          },
                        ),
                        const SizedBox(width: 10),
                        MyButton(
                          title: '/',
                          onPress: () {
                            userInput += '/';
                            setState(() {});
                          },
                          color: const Color(0xffffa00a),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MyButton(
                          title: '7',
                          onPress: () {
                            if (isResultDisplayed) {
                              // If result is displayed, reset the input
                              userInput = '';
                              answer = '';
                              isResultDisplayed = false;
                            }
                            userInput += '7';
                            setState(() {});
                          },
                        ),
                        const SizedBox(width: 10),
                        MyButton(
                          title: '8',
                          onPress: () {
                            if (isResultDisplayed) {
                              // Reset when result is displayed
                              userInput = '';
                              answer = '';
                              isResultDisplayed = false;
                            }
                            userInput += '8';
                            setState(() {});
                          },
                        ),
                        const SizedBox(width: 10),
                        MyButton(
                          title: '9',
                          onPress: () {
                            if (isResultDisplayed) {
                              // Reset when result is displayed
                              userInput = '';
                              answer = '';
                              isResultDisplayed = false;
                            }
                            userInput += '9';
                            setState(() {});
                          },
                        ),
                        const SizedBox(width: 10),
                        MyButton(
                          title: 'x',
                          onPress: () {
                            userInput += 'x';
                            setState(() {});
                          },
                          color: const Color(0xffffa00a),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MyButton(
                          title: '4',
                          onPress: () {
                            if (isResultDisplayed) {
                              // Reset when result is displayed
                              userInput = '';
                              answer = '';
                              isResultDisplayed = false;
                            }
                            userInput += '4';
                            setState(() {});
                          },
                        ),
                        const SizedBox(width: 10),
                        MyButton(
                          title: '5',
                          onPress: () {
                            if (isResultDisplayed) {
                              // Reset when result is displayed
                              userInput = '';
                              answer = '';
                              isResultDisplayed = false;
                            }
                            userInput += '5';
                            setState(() {});
                          },
                        ),
                        const SizedBox(width: 10),
                        MyButton(
                          title: '6',
                          onPress: () {
                            if (isResultDisplayed) {
                              // Reset when result is displayed
                              userInput = '';
                              answer = '';
                              isResultDisplayed = false;
                            }
                            userInput += '6';
                            setState(() {});
                          },
                        ),
                        const SizedBox(width: 10),
                        MyButton(
                          title: '-',
                          onPress: () {
                            userInput += '-';
                            setState(() {});
                          },
                          color: const Color(0xffffa00a),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MyButton(
                          title: '1',
                          onPress: () {
                            if (isResultDisplayed) {
                              // Reset when result is displayed
                              userInput = '';
                              answer = '';
                              isResultDisplayed = false;
                            }
                            userInput += '1';
                            setState(() {});
                          },
                        ),
                        const SizedBox(width: 10),
                        MyButton(
                          title: '2',
                          onPress: () {
                            if (isResultDisplayed) {
                              // Reset when result is displayed
                              userInput = '';
                              answer = '';
                              isResultDisplayed = false;
                            }
                            userInput += '2';
                            setState(() {});
                          },
                        ),
                        const SizedBox(width: 10),
                        MyButton(
                          title: '3',
                          onPress: () {
                            if (isResultDisplayed) {
                              // Reset when result is displayed
                              userInput = '';
                              answer = '';
                              isResultDisplayed = false;
                            }
                            userInput += '3';
                            setState(() {});
                          },
                        ),
                        const SizedBox(width: 10),
                        MyButton(
                          title: '+',
                          onPress: () {
                            userInput += '+';
                            setState(() {});
                          },
                          color: const Color(0xffffa00a),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MyButton(
                          title: '0',
                          onPress: () {
                            if (isResultDisplayed) {
                              // Reset when result is displayed
                              userInput = '';
                              answer = '';
                              isResultDisplayed = false;
                            }
                            userInput += '0';
                            setState(() {});
                          },
                        ),
                        const SizedBox(width: 10),
                        MyButton(
                          title: '.',
                          onPress: () {
                            userInput += '.';
                            setState(() {});
                          },
                        ),
                        const SizedBox(width: 10),
                        MyButton(
                          title: 'DEL',
                          onPress: () {
                            userInput =
                                userInput.substring(0, userInput.length - 1);
                            setState(() {});
                          },
                        ),
                        const SizedBox(width: 10),
                        MyButton(
                          title: '=',
                          onPress: () {
                            equalPress();
                            setState(() {});
                          },
                          color: const Color(0xffffa00a),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  void equalPress() {
    String finalUserInput = userInput;
    finalUserInput = userInput.replaceAll('x', '*');

    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();

    // Set flag to indicate result is displayed
    isResultDisplayed = true;
  }
}
