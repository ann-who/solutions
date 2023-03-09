// https://informatics.msk.ru/mod/statements/view.php?id=270&chapterid=226#1

import 'dart:convert';
import 'dart:io';

void main() {
  int totalElementsQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);
  List<String> elements = (stdin.readLineSync(encoding: utf8)!).split(' ');
  int wantedElement = int.parse(stdin.readLineSync(encoding: utf8)!);
  List<int> numbers = elements.map(int.parse).toList();

  List<int> elementNumbers = [];
  String elementNumbersOutput;

  for (var i = 0; i < totalElementsQuantity; i++) {
    if (wantedElement == numbers[i]) {
      elementNumbers.add(i + 1);
    }
  }

  elementNumbersOutput = elementNumbers.join(' ');
  stdout.write(elementNumbersOutput);
}
