// https://informatics.msk.ru/mod/statements/view.php?id=249&chapterid=3058#1

import 'dart:convert';
import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync(encoding: utf8)!);

  int divider = 2;

  while (number % divider != 0) {
    divider++;
  }

  stdout.write(divider);
}
