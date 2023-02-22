// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=261#1

import 'dart:convert';
import 'dart:io';

void main() {
  int a = int.parse(stdin.readLineSync(encoding: utf8)!);
  int b = int.parse(stdin.readLineSync(encoding: utf8)!);
  int c = int.parse(stdin.readLineSync(encoding: utf8)!);
  int d = int.parse(stdin.readLineSync(encoding: utf8)!);

  if (a == 0 && b == 0) {
    stdout.write('INF');
  } else if (a == 0 && b != 0 || b % a != 0) {
    stdout.write('NO');
  } else {
    int x = -b ~/ a;
    if (c * x + d == 0) {
      stdout.write('NO');
    } else {
      stdout.write('$x');
    }
  }
}
