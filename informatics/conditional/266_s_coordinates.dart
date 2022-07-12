// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=266#1

import 'dart:convert';
import 'dart:io';

void main() {
  int x1 = int.parse(stdin.readLineSync(encoding: utf8)!);
  int y1 = int.parse(stdin.readLineSync(encoding: utf8)!);
  int x2 = int.parse(stdin.readLineSync(encoding: utf8)!);
  int y2 = int.parse(stdin.readLineSync(encoding: utf8)!);

  if (x1 > 0 && x2 > 0 && y1 > 0 && y2 > 0) {
    stdout.write('YES');
  } else if (x1 < 0 && x2 < 0 && y1 < 0 && y2 < 0) {
    stdout.write('YES');
  } else if (x1 < 0 && x2 < 0 && y1 > 0 && y2 > 0) {
    stdout.write('YES');
  } else if (x1 > 0 && x2 > 0 && y1 < 0 && y2 < 0) {
    stdout.write('YES');
  } else {
    stdout.write('NO');
  }
}
