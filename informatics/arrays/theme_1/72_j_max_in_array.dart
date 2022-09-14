// https://informatics.msk.ru/mod/statements/view.php?id=208&chapterid=72#1

import 'dart:convert';
import 'dart:io';

void main() {
  int totalElementsQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);
  List<String> elements = (stdin.readLineSync(encoding: utf8)!).split(' ');
  List<int> integers = elements.map(int.parse).toList();

  int maxElement = integers[0];

  for (var i = 1; i < totalElementsQuantity; i++) {
    if (integers[i] > maxElement) {
      maxElement = integers[i];
    }
  }

  stdout.write(maxElement);
}
