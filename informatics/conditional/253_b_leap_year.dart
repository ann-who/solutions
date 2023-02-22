// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=253#1

import 'dart:convert';
import 'dart:io';

void main() {
  int year = int.parse(stdin.readLineSync(encoding: utf8)!);

  if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
    stdout.write('YES');
  } else {
    stdout.write('NO');
  }
}
