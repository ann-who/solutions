// https://informatics.msk.ru/mod/statements/view.php?id=2741&chapterid=3157#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
  List<int> numbers = elements.map(int.parse).toList();

  int biggerNumberCounter = 0;

  for (var i = 1; i < numbers.length - 1; i++) {
    if (numbers[i] > numbers[i - 1] && numbers[i] > numbers[i + 1]) {
      biggerNumberCounter++;
    }
  }

  stdout.write(biggerNumberCounter);
}
