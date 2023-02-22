// https://informatics.msk.ru/mod/statements/view.php?id=2296&chapterid=2958#1

import 'dart:convert';
import 'dart:io';

void main() {
  int a = int.parse(stdin.readLineSync(encoding: utf8)!);
  int b = int.parse(stdin.readLineSync(encoding: utf8)!);

  int difference = a - b;
  int positiveDifference = difference.abs();
  int maxNumber = (a + b + positiveDifference) ~/ 2;

  stdout.write(maxNumber);
}
