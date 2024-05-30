import 'package:calculator/widget/keys_column.dart';
import 'package:flutter/material.dart';

class Keys extends StatelessWidget {
  const Keys({super.key, required this.addToResult, required this.removelast});
  final void Function(String res) addToResult;
  final void Function() removelast;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: KeysColumn(
        addToResult: addToResult,
        removelast: removelast,
      ),
    );
  }
}
