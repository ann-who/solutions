// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=296#1

import 'dart:convert';
import 'dart:io';

void main() {
  int a = int.parse(stdin.readLineSync(encoding: utf8)!);
  int b = int.parse(stdin.readLineSync(encoding: utf8)!);
  int c = int.parse(stdin.readLineSync(encoding: utf8)!);

  if (a == b && a == c) {
    stdout.write('3');
  } else if (a == b || a == c || c == b) {
    stdout.write('2');
  } else {
    stdout.write('0');
  }
}
