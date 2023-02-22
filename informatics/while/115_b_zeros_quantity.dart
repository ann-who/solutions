// https://informatics.msk.ru/mod/statements/view.php?id=2587&chapterid=115#1

import 'dart:convert';
import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync(encoding: utf8)!);

  stdout.write(numberOfZeroes(number));
}

int numberOfZeroes(int number) {
  int zerosQuantity = 0;
  int rest = 0;

  while (number > 0) {
    rest = number % 10;
    if (rest == 0) {
      ++zerosQuantity;
    }
    number ~/= 10;
  }
  return zerosQuantity;
}
