// https://informatics.msk.ru/mod/statements/view.php?id=2587&chapterid=118#1

import 'dart:convert';
import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync(encoding: utf8)!);

  stdout.write(reverse(number));
}

int? reverse(int number) {
  int lastNumber = 0;

  while (number > 0) {
    lastNumber = number % 10;
    number ~/= 10;
    stdout.write(lastNumber);
  }
  return null;
}
