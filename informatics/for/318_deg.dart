// https://informatics.msk.ru/mod/statements/view.php?id=278&chapterid=318#1

import 'dart:convert';
import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync(encoding: utf8)!);
  int degree = int.parse(stdin.readLineSync(encoding: utf8)!);

  int finalAnswer = 1;

  for (var i = 1; i < degree + 1; i++) {
    finalAnswer *= number;
  }

  stdout.write(finalAnswer);
}
