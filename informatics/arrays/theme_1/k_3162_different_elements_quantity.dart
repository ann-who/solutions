// https://informatics.msk.ru/mod/statements/view.php?id=2741&chapterid=3162#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
  List<int> numbers = elements.map(int.parse).toList();

  int differentElementsCounter = 1;

  for (var i = 0; i < numbers.length - 1; i++) {
    if (numbers[i] != numbers[i + 1]) {
      differentElementsCounter++;
    }
  }

  stdout.write(differentElementsCounter);
}
