// https://informatics.msk.ru/mod/statements/view.php?id=2587&chapterid=116#1

import 'dart:convert';
import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync(encoding: utf8)!);

  stdout.write('${minDigit(number)} ${maxDigit(number)}');
}

int minDigit(int number) {
  int minDigit = 0;

  while (number > 0) {
    minDigit = number % 10;
    number ~/= 10;
    if (minDigit < number) {
      return minDigit;
    }
  }
  return minDigit;
}

int maxDigit(int number) {
  int maxDigit = 0;

  while (number > 0) {
    maxDigit = number % 10;
    number ~/= 10;
    if (maxDigit > minDigit(number)) {
      return maxDigit;
    }
  }
  return maxDigit;
}
