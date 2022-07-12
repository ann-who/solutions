// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=1445#1

import 'dart:convert';
import 'dart:io';

void main() {
  int tableX = int.parse(stdin.readLineSync(encoding: utf8)!);
  int tableY = int.parse(stdin.readLineSync(encoding: utf8)!);
  int pointX = int.parse(stdin.readLineSync(encoding: utf8)!);
  int pointY = int.parse(stdin.readLineSync(encoding: utf8)!);

  int neighbourX1 = pointX - 1;
  int neighbourX2 = pointX + 1;
  int neighbourY1 = pointY - 1;
  int neighbourY2 = pointY + 1;

  if (neighbourY1 > 0 && neighbourY1 <= tableY) {
    stdout.write('$pointX $neighbourY1\n');
  }

  if (neighbourX2 > 0 && neighbourX2 <= tableX) {
    stdout.write('$neighbourX1 $pointY\n');
  }

  if (neighbourY2 > 0 && neighbourY2 <= tableY) {
    stdout.write('$pointX $neighbourY2\n');
  }

  if (neighbourX2 > 0 && neighbourX2 <= tableX) {
    stdout.write('$neighbourX2 $pointY\n');
  }
}
