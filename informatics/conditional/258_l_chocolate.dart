// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=258#1

import 'dart:convert';
import 'dart:io';

void main() {
  int chocolateHeight = int.parse(stdin.readLineSync(encoding: utf8)!);
  int chocolateWidth = int.parse(stdin.readLineSync(encoding: utf8)!);
  int piecesNeeded = int.parse(stdin.readLineSync(encoding: utf8)!);

  bool isEnoughPieces = (piecesNeeded < chocolateHeight * chocolateWidth);
  bool canSplitByHorizontal = (piecesNeeded % chocolateHeight == 0);
  bool canSplitByVertical = (piecesNeeded % chocolateWidth == 0);

  if (isEnoughPieces && (canSplitByHorizontal || canSplitByVertical)) {
    stdout.write('YES');
  } else {
    stdout.write('NO');
  }
}
