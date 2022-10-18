// https://informatics.msk.ru/mod/statements/view.php?id=280&chapterid=347#1

import 'dart:convert';
import 'dart:io';

void main() {
  int numbersQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);
  List<String> elements =
      stdin.readLineSync(encoding: utf8)!.split(' ').toList();
  List<int> numbers = elements.map(int.parse).toList();

  bool zeroExists = false;

  for (var i = 0; i < numbersQuantity; i++) {
    if (numbers[i] == 0) {
      zeroExists = true;
      stdout.write('YES');
      break;
    }
  }

  if (zeroExists == false) {
    stdout.write('NO');
  }
}
