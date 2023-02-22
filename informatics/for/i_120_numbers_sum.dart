// https://informatics.msk.ru/mod/statements/view.php?id=278&chapterid=120#1

import 'dart:convert';
import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync(encoding: utf8)!);

  double division = 0.0;
  int positiveNumber = number.abs();

  for (var i = 1; i <= positiveNumber; i++) {
    division += 1 / i;
  }

  double sum = 1 + division;

  stdout.write(sum);
}
