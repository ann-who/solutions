// https://informatics.msk.ru/mod/statements/view.php?id=278#1

import 'dart:convert';
import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync(encoding: utf8)!);

  int degSum = 0;

  for (var i = 0; i <= number; i++) {
    degSum += i * i;
  }

  stdout.write(degSum);
}
