import 'package:calculator/widget/key.dart';
import 'package:flutter/material.dart';

class KeyRows extends StatelessWidget {
  const KeyRows({
    super.key,
    required this.addToResult,
    required this.removelast,
    required this.buttonValues,
  });
  final void Function(String res) addToResult;
  final void Function() removelast;
  final List<String> buttonValues;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4, top: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          KeyWidget(value: buttonValues[0], addToResult: addToResult),
          KeyWidget(value: buttonValues[1], addToResult: addToResult),
          KeyWidget(value: buttonValues[2], addToResult: addToResult),
          // SizedBox(
          //   height: 50,
          //   width: MediaQuery.of(context).size.height * 0.092,
          //   child: IconButton(
          //     onPressed: () {
          //       removelast();
          //     },
          //     icon: const Icon(Icons.backspace_outlined),
          //   ),
          // ),
          KeyWidget(value: buttonValues[3], addToResult: addToResult),
        ],
      ),
    );
  }
}
