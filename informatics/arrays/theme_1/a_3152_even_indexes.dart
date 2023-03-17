// https://informatics.msk.ru/mod/statements/view.php?id=2741#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
  List<int> numbers = elements.map(int.parse).toList();

  // solution 1
  for (var i = 0; i < numbers.length; i += 2) {
    stdout.write('${numbers[i]} ');
  }

  // solution 2
  for (var i = 0; i < numbers.length; i++) {
    if (i % 2 == 0) {
      stdout.write('${numbers[i]} ');
    }
  }
}
