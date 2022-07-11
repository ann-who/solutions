// https://informatics.msk.ru/mod/statements/view.php?id=2296&chapterid=2944#1

import 'dart:convert';
import 'dart:io';

void main() {
  int givenNumber = int.parse(stdin.readLineSync(encoding: utf8)!);

  int unity = givenNumber % 10;
  int dozens = (givenNumber % 100) ~/ 10;
  int hundreds = (givenNumber % 1000) ~/ 100;

  int numbersSum = unity + dozens + hundreds;

  stdout.write(numbersSum);
}
