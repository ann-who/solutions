// https://informatics.msk.ru/mod/statements/view.php?id=2741&chapterid=3153#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
  List<int> numbers = elements.map(int.parse).toList();

  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 == 0) {
      stdout.write('${numbers[i]} ');
    }
  }
}
