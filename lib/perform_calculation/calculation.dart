bool calcError = false;

Map<String, double Function(double val, double answer)> signs = {
  "-": (double num, double answer) {
    return answer - num;
  },
  "+": (double num, double answer) {
    return answer + num;
  },
  "/": (double num, double answer) {
    return answer / num;
  },
  "X": (double num, double answer) {
    return answer * num;
  },
};

bool isNumeric(String s) {
  return double.tryParse(s) != null;
}

List<String> splitBySigns(String expression) {
  final pattern = RegExp(r'([-/X+])');
  List<String> matches =
      pattern.allMatches(expression).map((match) => match.group(0)!).toList();
  List<String> splitted = expression.split(pattern);

  List<String> result = [];
  for (int i = 0; i < splitted.length; i++) {
    result.add(splitted[i]);
    if (i < matches.length) {
      result.add(matches[i]);
    }
  }

  return result.where((e) => e.isNotEmpty).toList();
}

List<String> mergeDots(List<String> calculatedLists) {
  List<String> result = [];
  for (int i = 0; i < calculatedLists.length; i++) {
    if (calculatedLists[i] == '.') {
      if (i > 0 &&
          i < calculatedLists.length - 1 &&
          isNumeric(calculatedLists[i - 1]) &&
          isNumeric(calculatedLists[i + 1])) {
        result[result.length - 1] += '.${calculatedLists[i + 1]}';
        i++;
      } else {
        return [];
      }
    } else {
      result.add(calculatedLists[i]);
    }
  }
  return result;
}

String calcAnswer(String expression) {
  List<String> calculatedLists = mergeDots(splitBySigns(expression));

  if (calculatedLists.length % 2 == 0) {
    return 'Math Error';
  }

  if (!isNumeric(calculatedLists[0])) return "Math Error";

  double answer = double.parse(calculatedLists[0]);
  for (int i = 1; i < calculatedLists.length; i += 2) {
    String sign = calculatedLists[i];
    String num = calculatedLists[i + 1];

    bool isNumeric(String s) {
      return double.tryParse(s) != null;
    }

    if (!isNumeric(num)) return "Math Error";
    var newAnswer = signs[sign];
    answer = newAnswer!(double.parse(num), answer);
  }

  return answer.toString();
}
