// https://informatics.msk.ru/mod/statements/view.php?id=270&chapterid=227#1

import 'dart:convert';
import 'dart:io';

void main() {
  int totalElementsQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);
  List<String> elements = (stdin.readLineSync(encoding: utf8)!).split(' ');
  List<int> numbers = elements.map(int.parse).toList();

  int maxElement = 0;

  for (var i = 0; i < totalElementsQuantity; i++) {
    if (maxElement < numbers[i]) {
      maxElement = numbers[i];
    }
  }

  stdout.write(maxElement);
}
