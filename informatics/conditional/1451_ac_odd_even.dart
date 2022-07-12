// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=1451#1

import 'dart:convert';
import 'dart:io';

void main() {
  int a = int.parse(stdin.readLineSync(encoding: utf8)!);
  int b = int.parse(stdin.readLineSync(encoding: utf8)!);
  int c = int.parse(stdin.readLineSync(encoding: utf8)!);

  if ((a % 2 == 0 || b % 2 == 0 || c % 2 == 0) &&
      (a % 2 == 1 || b % 2 == 1 || c % 2 == 1)) {
    stdout.write('YES');
  } else {
    stdout.write('NO');
  }
}
