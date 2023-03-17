// https://informatics.msk.ru/mod/statements/view.php?id=2741&chapterid=3158#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
  List<int> numbers = elements.map(int.parse).toList();

  int maxNumber = numbers[0];
  int maxIndex = 0;

  for (var i = 1; i < numbers.length - 1; i++) {
    if (maxNumber < numbers[i]) {
      maxNumber = numbers[i];
      maxIndex = i;
    }
  }

  stdout.write('$maxNumber $maxIndex');
}
