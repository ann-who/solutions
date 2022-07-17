// https://informatics.msk.ru/mod/statements/view.php?id=249#1

import 'dart:convert';
import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync(encoding: utf8)!);

  int i = 1;
  int square = i * i;

  while (square <= number) {
    stdout.write('$square\n');
    i++;
    square = i * i;
  }
}
