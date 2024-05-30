import 'package:calculator/perform_calculation/calculation.dart';
import 'package:calculator/widget/keys.dart';
import 'package:calculator/widget/result.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> result = [];
  String anwser = "";
  void removelast() {
    setState(() {
      if (result.isNotEmpty) result.removeLast();
    });
  }

  void addToResult(String value) {
    if (value == "=") {
      setState(() {
        anwser = calcAnswer(result.join(""));
        result = [];
      });
    } else if (value == "C") {
      setState(() {
        anwser = "";
        result = [];
      });
    } else if (value == "%") {
      setState(() {
        anwser = "";
        // result.removeLast();
        result = [...result, "/", "100"];
      });
    } else {
      setState(() {
        result.add(value);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      body: Column(
        children: [
          Result(
            result: result,
            answer: anwser,
          ),
          Keys(
            addToResult: addToResult,
            removelast: removelast,
          )
        ],
      ),
    );
  }
}
