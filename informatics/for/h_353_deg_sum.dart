// https://informatics.msk.ru/mod/statements/view.php?id=278&chapterid=353#1

import 'dart:convert';
import 'dart:io';

void main() {
  int degree = int.parse(stdin.readLineSync(encoding: utf8)!);

  int sumOfNumbersInDegree = 0;
  int numberInDegree = 1;

  for (var i = 1; i <= degree; i++) {
    numberInDegree *= 2;
    sumOfNumbersInDegree += numberInDegree;
  }

  int degSum = 1 + sumOfNumbersInDegree;

  stdout.write(degSum);
}
