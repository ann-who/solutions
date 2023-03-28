// https://informatics.msk.ru/mod/statements/view.php?id=2741&chapterid=3173#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
  List<int> numbers = elements.map(int.parse).toList();

  int counter = 0;
  int mostFrequent = numbers[0];

  for (var i = 0; i < numbers.length; i++) {
    int numberToCheck = numbers[i];
    int tempCounter = 0;

    for (var j = i; j < numbers.length; j++) {
      if (numberToCheck == numbers[j]) {
        tempCounter++;
      }
    }

    if (tempCounter > counter) {
      counter = tempCounter;
      mostFrequent = numberToCheck;
    }
  }

  stdout.write(mostFrequent);
}
