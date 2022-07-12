// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=257#1

import 'dart:convert';
import 'dart:io';

void main() {
  int horseA = int.parse(stdin.readLineSync(encoding: utf8)!);
  int horseB = int.parse(stdin.readLineSync(encoding: utf8)!);
  int otherA = int.parse(stdin.readLineSync(encoding: utf8)!);
  int otherB = int.parse(stdin.readLineSync(encoding: utf8)!);

  if (horseA != otherA &&
      horseB != otherB &&
      (horseA + horseB) != (otherA + otherB) &&
      (horseA - horseB) != (otherA - otherB)) {
    stdout.write('YES');
  } else {
    stdout.write('NO');
  }
}
