// https://informatics.msk.ru/mod/statements/view.php?id=2741&chapterid=3175#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
  List<int> numbers = elements.map(int.parse).toList();
  int numbersToMove = int.parse(stdin.readLineSync(encoding: utf8)!);

  if (numbersToMove > 0) {
    for (var i = 0; i < numbersToMove; i++) {
      numbers.insert(0, numbers.last);
      numbers.removeAt(numbers.length - 1);
    }
  } else {
    for (var i = numbersToMove; i <= 0; i++) {
      numbers.add(numbers[0]);
      numbers.removeAt(0);
    }
  }

  stdout.write(numbers);
}
