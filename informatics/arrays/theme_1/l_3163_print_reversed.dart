// https://informatics.msk.ru/mod/statements/view.php?id=2741&chapterid=3163#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
  List<int> numbers = elements.map(int.parse).toList();

  for (var i = numbers.length - 1; i >= 0; i--) {
    stdout.write('${numbers[i]} ');
  }
}
