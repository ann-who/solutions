// https://informatics.msk.ru/mod/statements/view.php?id=208&chapterid=65#1

import 'dart:convert';
import 'dart:io';

void main() {
  int totalElementsQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);
  List<String> elements = (stdin.readLineSync(encoding: utf8)!).split(' ');
  List<int> integers = elements.map(int.parse).toList();
  int positiveCounter = 0;

  for (var i = 0; i < totalElementsQuantity; i++) {
    if (integers[i] < 0 || integers[i] == 0) {
      continue;
    }
    ++positiveCounter;
  }

  stdout.write(positiveCounter);
}
