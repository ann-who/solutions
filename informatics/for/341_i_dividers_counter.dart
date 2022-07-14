// https://informatics.msk.ru/mod/statements/view.php?id=280&chapterid=341#1

import 'dart:convert';
import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync(encoding: utf8)!);

  int counter = 0;

  for (var i = 1; i <= number; i++) {
    if (number % i == 0) {
      ++counter;
    }
  }
  stdout.write(counter);
}
