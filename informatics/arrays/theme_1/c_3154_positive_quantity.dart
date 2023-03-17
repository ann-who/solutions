// https://informatics.msk.ru/mod/statements/view.php?id=2741&chapterid=3154#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
  List<int> numbers = elements.map(int.parse).toList();

  int positiveCounter = 0;

  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] > 0) {
      positiveCounter++;
    }
  }

  stdout.write(positiveCounter);
}
