import 'package:flutter/material.dart';

class KeyWidget extends StatelessWidget {
  const KeyWidget({
    super.key,
    required this.value,
    required this.addToResult,
  });
  final void Function(String res) addToResult;

  final String value;

  @override
  Widget build(BuildContext context) {
    double buttonWidth =
        MediaQuery.of(context).size.height * 0.092 * (1 + (2 - 1) * 0.5);

    return ElevatedButton(
      onPressed: () {
        addToResult(value);
      },
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        fixedSize: Size(buttonWidth, 60),
      ),
      child: value != ""
          ? Text(
              value,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            )
          : const Stack(
              alignment: Alignment.center,
              children: [
                Icon(Icons.backspace_outlined),
              ],
            ),
    );
  }
}
