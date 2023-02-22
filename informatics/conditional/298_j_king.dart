// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=298#1

import 'dart:convert';
import 'dart:io';

void main() {
  int kingX = int.parse(stdin.readLineSync(encoding: utf8)!);
  int kingY = int.parse(stdin.readLineSync(encoding: utf8)!);
  int otherX = int.parse(stdin.readLineSync(encoding: utf8)!);
  int otherY = int.parse(stdin.readLineSync(encoding: utf8)!);

  int diffX = (kingX - otherX).abs();
  int diffY = (kingY - otherY).abs();

  if (diffX == 1 || diffY == 1) {
    stdout.write('YES');
  } else {
    stdout.write('NO');
  }
}
