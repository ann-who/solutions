// https://informatics.msk.ru/mod/statements/view.php?id=2741&chapterid=3159#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
  List<int> numbers = elements.map(int.parse).toList();

  int minNumber = numbers[0];

  for (var i = 1; i < numbers.length; i++) {
    if (minNumber < 0) {
      minNumber = numbers[i];
    } else if (minNumber > numbers[i] && numbers[i] > 0) {
      minNumber = numbers[i];
    }
  }

  stdout.write(minNumber);
}
