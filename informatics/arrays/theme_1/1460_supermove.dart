// https://informatics.msk.ru/mod/statements/view.php?id=208&chapterid=1460#1

import 'dart:convert';
import 'dart:io';

void main() {
  int totalElementsQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);
  List<String> elements = (stdin.readLineSync(encoding: utf8)!).split(' ');
  List<int> numbers = elements.map(int.parse).toList();
  int elementsToMoveQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);

  if (elementsToMoveQuantity > 0)
    for (var i = totalElementsQuantity; i >= elementsToMoveQuantity; i--) {
      int numberToReplace = numbers[totalElementsQuantity - 1];
      numbers.insert(0, numberToReplace);
      numbers.removeAt(totalElementsQuantity);
    }
  else {
    for (var i = 0; i > elementsToMoveQuantity; i--) {
      int numberToReplace = numbers[0];
      numbers.insert(totalElementsQuantity, numberToReplace);
      numbers.removeAt(0);
    }
  }

  stdout.write(numbers);
}
