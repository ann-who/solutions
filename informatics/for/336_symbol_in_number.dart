// https://informatics.msk.ru/mod/statements/view.php?id=280&chapterid=336#1

import 'dart:convert';
import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync(encoding: utf8)!);
  int digit = int.parse(stdin.readLineSync(encoding: utf8)!);

  int counter = 0;

  for (var i = number; i != 0; i ~/= 10) {
    int lastDigit = i % 10;
    if (lastDigit == digit) {
      ++counter;
    }
  }

  stdout.write(counter);
}
