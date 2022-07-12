// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=298#1

import 'dart:convert';
import 'dart:io';

void main() {
  int kingA = int.parse(stdin.readLineSync(encoding: utf8)!);
  int kingB = int.parse(stdin.readLineSync(encoding: utf8)!);
  int otherA = int.parse(stdin.readLineSync(encoding: utf8)!);
  int otherB = int.parse(stdin.readLineSync(encoding: utf8)!);

  if (kingA == otherA - 1 || kingB == otherB - 1) {
    stdout.write('YES');
  } else {
    stdout.write('NO');
  }
}
