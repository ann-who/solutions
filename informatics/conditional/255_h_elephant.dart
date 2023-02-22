// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=255#1

import 'dart:convert';
import 'dart:io';

void main() {
  int elephantX = int.parse(stdin.readLineSync(encoding: utf8)!);
  int elephantY = int.parse(stdin.readLineSync(encoding: utf8)!);
  int otherX = int.parse(stdin.readLineSync(encoding: utf8)!);
  int otherY = int.parse(stdin.readLineSync(encoding: utf8)!);

  bool bothOnRightDiagonal = ((elephantX + elephantY) == (otherX + otherY));
  bool bothOnLeftDiagonal = ((elephantX - elephantY) == (otherX - otherY));

  if (bothOnRightDiagonal || bothOnLeftDiagonal) {
    stdout.write('YES');
  } else {
    stdout.write('NO');
  }
}
