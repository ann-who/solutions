// https://informatics.msk.ru/mod/statements/view.php?id=2296&chapterid=2956#1

import 'dart:convert';
import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync(encoding: utf8)!);

  int unity = number % 10;
  int dozens = (number % 100) ~/ 10;
  int hundreds = (number % 1000) ~/ 100;
  int thousands = number ~/ 1000;

  int edgeSymmetric = thousands - unity;
  int middleSymmetric = dozens - hundreds;

  int isSymmetric = 1 + edgeSymmetric + middleSymmetric;

  stdout.write(isSymmetric);
}
