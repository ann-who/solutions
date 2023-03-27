// https://informatics.msk.ru/mod/statements/view.php?id=2741&chapterid=3170#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
  List<int> numbers = elements.map(int.parse).toList();

  int pairsCounter = 0;

  for (var i = 0; i < numbers.length; i++) {
    int numberToCompare = numbers[i];

    for (var j = i + 1; j < numbers.length; j++) {
      if (numberToCompare == numbers[j]) {
        pairsCounter++;
      }
    }
  }

  stdout.write(pairsCounter);
}
