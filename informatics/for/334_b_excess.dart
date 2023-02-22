// https://informatics.msk.ru/mod/statements/view.php?id=280&chapterid=334#1

import 'dart:convert';
import 'dart:io';

void main() {
  int a = int.parse(stdin.readLineSync(encoding: utf8)!);
  int b = int.parse(stdin.readLineSync(encoding: utf8)!);
  int c = int.parse(stdin.readLineSync(encoding: utf8)!);
  int d = int.parse(stdin.readLineSync(encoding: utf8)!);

  for (var i = a; i <= b; i++) {
    if (i % d == c) {
      stdout.write('$i ');
    }
  }
}
