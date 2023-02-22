// https://informatics.msk.ru/mod/statements/view.php?id=208&chapterid=68#1

import 'dart:convert';
import 'dart:io';

void main() {
  int totalElementsQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);
  List<String> elements = (stdin.readLineSync(encoding: utf8)!).split(' ');
  List<int> integers = elements.map(int.parse).toList();
  int counterGreaterThanNeighbors = 0;

  for (var i = 1; i < totalElementsQuantity - 1; i++) {
    if (integers[i] > integers[i - 1] && integers[i] > integers[i + 1]) {
      ++counterGreaterThanNeighbors;
    }
  }

  stdout.write(counterGreaterThanNeighbors);
}
