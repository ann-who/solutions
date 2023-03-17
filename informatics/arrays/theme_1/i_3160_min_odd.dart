// https://informatics.msk.ru/mod/statements/view.php?id=2741&chapterid=3160#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
  List<int> numbers = elements.map(int.parse).toList();

  int minOdd = numbers[0];

  for (var i = 0; i < numbers.length; i++) {
    if (minOdd == 0) {
      minOdd = numbers[i];
    } else if (numbers[i] % 2 != 0 && numbers[i] < minOdd) {
      minOdd = numbers[i];
    }
  }

  if (minOdd % 2 != 0) {
    stdout.write(minOdd);
  } else {
    stdout.write(0);
  }
}
