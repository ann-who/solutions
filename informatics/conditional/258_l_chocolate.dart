// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=258#1

import 'dart:convert';
import 'dart:io';

void main() {
  int chocolateHeight = int.parse(stdin.readLineSync(encoding: utf8)!);
  int chocolateWidth = int.parse(stdin.readLineSync(encoding: utf8)!);
  int piecesNeeded = int.parse(stdin.readLineSync(encoding: utf8)!);

  if (piecesNeeded < chocolateHeight * chocolateWidth &&
      (piecesNeeded % chocolateHeight == 0 ||
          piecesNeeded % chocolateWidth == 0)) {
    stdout.write('YES');
  } else {
    stdout.write('NO');
  }
}
