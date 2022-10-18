// https://informatics.msk.ru/mod/statements/view.php?id=280&chapterid=345#1

import 'dart:convert';
import 'dart:io';

void main() {
  int numbersQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);
  List<String> elements =
      stdin.readLineSync(encoding: utf8)!.split(' ').toList();
  List<int> numbers = elements.map(int.parse).toList();

  int zerosQuantity = 0;

  for (var i = 0; i < numbersQuantity; i++) {
    if (numbers[i] == 0) {
      zerosQuantity += 1;
    }
    continue;
  }

  stdout.write(zerosQuantity);
}
