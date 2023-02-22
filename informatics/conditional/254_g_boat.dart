// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=254#1

import 'dart:convert';
import 'dart:io';

void main() {
  int boatX = int.parse(stdin.readLineSync(encoding: utf8)!);
  int boatY = int.parse(stdin.readLineSync(encoding: utf8)!);
  int otherX = int.parse(stdin.readLineSync(encoding: utf8)!);
  int otherY = int.parse(stdin.readLineSync(encoding: utf8)!);

  bool bothOnSameHorizontal = (boatY == otherY);
  bool bothOnSameVertical = (boatX == otherX);

  if (bothOnSameHorizontal || bothOnSameVertical) {
    stdout.write('YES');
  } else {
    stdout.write('NO');
  }
}
