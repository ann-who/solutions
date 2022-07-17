// https://informatics.msk.ru/mod/statements/view.php?id=249&chapterid=3059#1

import 'dart:convert';
import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync(encoding: utf8)!);

  int square = 1;

  while (square <= number) {
    stdout.write('$square ');
    square *= 2;
  }
}
