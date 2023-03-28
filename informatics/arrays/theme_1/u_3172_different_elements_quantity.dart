// https://informatics.msk.ru/mod/statements/view.php?id=2741&chapterid=3172#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
  List<int> numbers = elements.map(int.parse).toList();

  int differentElementsCounter = 0;
  bool inRange = false;

  for (var i = 0; i < numbers.length; i++) {
    int numberToCheck = numbers[i];
    int numberIndex = i;

    for (var j = i; j < numbers.length; j++) {
      if (numberToCheck != numbers[j]) {
        inRange = false;
      } else if (numberIndex == j) {
        inRange = false;
      } else {
        inRange = true;
        break;
      }
    }

    if (inRange == false) {
      differentElementsCounter++;
    }
  }

  if (differentElementsCounter == 0) {
    differentElementsCounter = 1;
  }

  stdout.write(differentElementsCounter);
}
