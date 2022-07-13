// https://informatics.msk.ru/mod/statements/view.php?id=278#1

import 'dart:convert';
import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync(encoding: utf8)!);

  int degSum = 0;

  // why i cant just i == number ???????????
  for (var i = 0; i < number + 1; i++) {
    degSum += i * i;
  }

  stdout.write(degSum);
}
