import 'package:calculator/widget/row_keys.dart';
import 'package:flutter/material.dart';

class KeysColumn extends StatelessWidget {
  const KeysColumn({
    super.key,
    required this.addToResult,
    required this.removelast,
  });
  final void Function(String res) addToResult;
  final void Function() removelast;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        KeyRows(
          addToResult: addToResult,
          removelast: removelast,
          buttonValues: const ["C", "%", "", "/"],
        ),
        KeyRows(
          addToResult: addToResult,
          removelast: removelast,
          buttonValues: const ["1", "2", "3", "X"],
        ),
        KeyRows(
          addToResult: addToResult,
          removelast: removelast,
          buttonValues: const ["4", "5", "6", "-"],
        ),
        KeyRows(
          addToResult: addToResult,
          removelast: removelast,
          buttonValues: const ["7", "8", "9", "+"],
        ),
        KeyRows(
          addToResult: addToResult,
          removelast: removelast,
          buttonValues: const ["00", "0", ".", "="],
        ),
      ],
    );
  }
}
