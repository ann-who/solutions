// https://informatics.msk.ru/mod/statements/view.php?id=278&chapterid=316#1

import 'dart:convert';
import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync(encoding: utf8)!);

  int factorial = 1;

  for (var i = 1; i <= number; i++) {
    factorial *= i;
  }

  stdout.write(factorial);
}
