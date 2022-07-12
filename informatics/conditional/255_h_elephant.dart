// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=255#1

import 'dart:convert';
import 'dart:io';

void main() {
  int elephantA = int.parse(stdin.readLineSync(encoding: utf8)!);
  int elephantB = int.parse(stdin.readLineSync(encoding: utf8)!);
  int otherA = int.parse(stdin.readLineSync(encoding: utf8)!);
  int otherB = int.parse(stdin.readLineSync(encoding: utf8)!);

  if ((elephantA + elephantB) == (otherA + otherB) ||
      (elephantA - elephantB) == (otherA - otherB)) {
    stdout.write('YES');
  } else {
    stdout.write('NO');
  }
}
