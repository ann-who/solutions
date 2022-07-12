// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=294#1

import 'dart:convert';
import 'dart:io';

void main() {
  int a = int.parse(stdin.readLineSync(encoding: utf8)!);
  int b = int.parse(stdin.readLineSync(encoding: utf8)!);
  int c = int.parse(stdin.readLineSync(encoding: utf8)!);

  if (a > b && a > c) {
    stdout.write(a);
  } else if (b > a && b > c) {
    stdout.write(b);
  } else {
    stdout.write(c);
  }
}
