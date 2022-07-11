// https://informatics.msk.ru/mod/statements/view.php?id=2296&chapterid=2957#1

import 'dart:convert';
import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync(encoding: utf8)!);
  int m = int.parse(stdin.readLineSync(encoding: utf8)!);

  int rest = n % m;
  int divisionPossibility = 1 + rest;

  stdout.write(divisionPossibility);
}
