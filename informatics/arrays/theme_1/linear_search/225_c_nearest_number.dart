// https://informatics.msk.ru/mod/statements/view.php?id=270&chapterid=225#1

import 'dart:convert';
import 'dart:io';

void main() {
  int totalElementsQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);
  List<String> elements = (stdin.readLineSync(encoding: utf8)!).split(' ');
  int wantedElement = int.parse(stdin.readLineSync(encoding: utf8)!);
  List<int> numbers = elements.map(int.parse).toList();

  int nearestNumber = numbers[0];

  for (var i = 1; i < totalElementsQuantity; i++) {
    var difference = wantedElement - numbers[i];
    var previousDifference = wantedElement - numbers[i - 1];

    if (difference < 0) {
      difference *= -1;
    }
    if (previousDifference < 0) {
      previousDifference *= -1;
    }

    if (difference < previousDifference) {
      nearestNumber = numbers[i];
    }
  }

  stdout.write(nearestNumber);
}
