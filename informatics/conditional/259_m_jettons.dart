// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=259#1

import 'dart:convert';
import 'dart:io';

void main() {
  int jettonsQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);

  if (jettonsQuantity % 4 == 0 || jettonsQuantity == 1) {
    stdout.write('YES');
  } else {
    stdout.write('NO');
  }
}
