// https://informatics.msk.ru/mod/statements/view.php?id=280&chapterid=346#1

import 'dart:convert';
import 'dart:io';

void main() {
  int numbersQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);
  List<String> elements =
      stdin.readLineSync(encoding: utf8)!.split(' ').toList();
  List<int> numbers = elements.map(int.parse).toList();

  int zerosQuantity = 0;
  int positiveNumbersQuantity = 0;
  int negativeNumbersQuantity = 0;

  for (var i = 0; i < numbersQuantity; i++) {
    if (numbers[i] == 0) {
      zerosQuantity += 1;
    } else if (numbers[i] > 0) {
      positiveNumbersQuantity += 1;
    } else {
      negativeNumbersQuantity += 1;
    }
  }

  stdout.write(
      '$zerosQuantity $positiveNumbersQuantity $negativeNumbersQuantity');
}
