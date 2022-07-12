// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=254#1

import 'dart:convert';
import 'dart:io';

void main() {
  int boatA = int.parse(stdin.readLineSync(encoding: utf8)!);
  int boatB = int.parse(stdin.readLineSync(encoding: utf8)!);
  int otherA = int.parse(stdin.readLineSync(encoding: utf8)!);
  int otherB = int.parse(stdin.readLineSync(encoding: utf8)!);

  if (boatA == otherA || boatB == otherB) {
    stdout.write('YES');
  } else {
    stdout.write('NO');
  }
}
