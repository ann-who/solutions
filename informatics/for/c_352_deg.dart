// https://informatics.msk.ru/mod/statements/view.php?id=278&chapterid=352#1

import 'dart:convert';
import 'dart:io';

void main() {
  int degree = int.parse(stdin.readLineSync(encoding: utf8)!);

  int numberInDegree = 1;

  for (var i = 1; i <= degree; i++) {
    numberInDegree *= 2;
  }

  stdout.write(numberInDegree);
}
