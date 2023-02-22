// https://informatics.msk.ru/mod/statements/view.php?id=2587#1

import 'dart:convert';
import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync(encoding: utf8)!);

  stdout.write(sumOfDigits(number));
}

int sumOfDigits(int number) {
  int sum = 0;

  while (number > 0) {
    sum += number % 10;
    number ~/= 10;
  }
  return sum;
}
