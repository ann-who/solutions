// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=256#1

import 'dart:convert';
import 'dart:io';

void main() {
  int queenX = int.parse(stdin.readLineSync(encoding: utf8)!);
  int queenY = int.parse(stdin.readLineSync(encoding: utf8)!);
  int otherX = int.parse(stdin.readLineSync(encoding: utf8)!);
  int otherY = int.parse(stdin.readLineSync(encoding: utf8)!);

  bool bothOnSameHorizontal = (queenY == otherY);
  bool bothOnSameVertical = (queenX == otherX);
  bool bothOnRightDiagonal = ((queenX + queenY) == (otherX + otherY));
  bool bothOnLeftDiagonal = ((queenX - queenY) == (otherX - otherY));

  if (bothOnSameHorizontal ||
      bothOnSameVertical ||
      bothOnRightDiagonal ||
      bothOnLeftDiagonal) {
    stdout.write('YES');
  } else {
    stdout.write('NO');
  }
}
