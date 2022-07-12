// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=264#1

import 'dart:convert';
import 'dart:io';

void main() {
  int wantedIceCream = int.parse(stdin.readLineSync(encoding: utf8)!);

  if (wantedIceCream % 3 == 0 || wantedIceCream % 5 == 0) {
    stdout.write('YES');
  } else {
    stdout.write('NO');
  }
}
