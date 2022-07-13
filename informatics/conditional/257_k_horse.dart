// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=257#1

import 'dart:convert';
import 'dart:io';

void main() {
  int horseX = int.parse(stdin.readLineSync(encoding: utf8)!);
  int horseY = int.parse(stdin.readLineSync(encoding: utf8)!);
  int otherX = int.parse(stdin.readLineSync(encoding: utf8)!);
  int otherY = int.parse(stdin.readLineSync(encoding: utf8)!);

  int diffX = (horseX - otherX).abs();
  int diffY = (horseY - otherY).abs();

  if ((diffX == 1 && diffY == 2) || (diffX == 2 && diffY == 1)) {
    stdout.write('YES');
  } else {
    stdout.write('NO');
  }
}
