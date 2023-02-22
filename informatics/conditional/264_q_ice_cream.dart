// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=264#1

import 'dart:convert';
import 'dart:io';

void main() {
  int wantedIceCream = int.parse(stdin.readLineSync(encoding: utf8)!);

  bool isAcceptable =
      wantedIceCream >= 3 && wantedIceCream != 4 && wantedIceCream != 7;

  if (isAcceptable) {
    stdout.write('YES');
  } else {
    stdout.write('NO');
  }
}
