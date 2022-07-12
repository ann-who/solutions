// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=256#1

import 'dart:convert';
import 'dart:io';

void main() {
  int queenA = int.parse(stdin.readLineSync(encoding: utf8)!);
  int queenB = int.parse(stdin.readLineSync(encoding: utf8)!);
  int otherA = int.parse(stdin.readLineSync(encoding: utf8)!);
  int otherB = int.parse(stdin.readLineSync(encoding: utf8)!);

  if (queenA == otherA ||
      queenB == otherB ||
      (queenA + queenB) == (otherA + otherB) ||
      (queenA - queenB) == (otherA - otherB)) {
    stdout.write('YES');
  } else {
    stdout.write('NO');
  }
}
