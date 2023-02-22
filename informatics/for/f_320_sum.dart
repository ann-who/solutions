// https://informatics.msk.ru/mod/statements/view.php?id=278&chapterid=320#1

import 'dart:convert';
import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync(encoding: utf8)!);

  double division = 0.0;

  for (var i = 2; i <= number; i++) {
    division += 1 / (i * i);
  }

  double sum = 1 + division;

  stdout.write(sum);
}
