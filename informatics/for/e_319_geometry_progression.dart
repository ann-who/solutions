// https://informatics.msk.ru/mod/statements/view.php?id=278&chapterid=319#1

import 'dart:convert';
import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync(encoding: utf8)!);
  int degree = int.parse(stdin.readLineSync(encoding: utf8)!);

  int sumOfNumbersInDegree = 0;
  int numberInDegree = 1;

  for (var i = 2; i <= degree; i++) {
    numberInDegree *= number;
    sumOfNumbersInDegree += numberInDegree * number;
  }

  int geometryProgression = 1 + number + sumOfNumbersInDegree;

  stdout.write(geometryProgression);
}
