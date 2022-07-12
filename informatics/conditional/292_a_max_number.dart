// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=292#1

import 'dart:convert';
import 'dart:io';

void main() {
  int a = int.parse(stdin.readLineSync(encoding: utf8)!);
  int b = int.parse(stdin.readLineSync(encoding: utf8)!);

  if (a > b) {
    stdout.write(a);
  } else {
    stdout.write(b);
  }
}
