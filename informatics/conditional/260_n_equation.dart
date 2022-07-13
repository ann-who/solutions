// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=260#1

import 'dart:convert';
import 'dart:io';

void main() {
  int a = int.parse(stdin.readLineSync(encoding: utf8)!);
  int b = int.parse(stdin.readLineSync(encoding: utf8)!);

  int x = -b ~/ a;

  if (a == 0 || b % a != 0) {
    stdout.write('NO');
  } else if (b == 0) {
    stdout.write('INF');
  } else {
    stdout.write(x);
  }
}
