// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=2959#1

import 'dart:convert';
import 'dart:io';

void main() {
  int x = int.parse(stdin.readLineSync(encoding: utf8)!);

  if (x > 0) {
    stdout.write('1');
  } else if (x < 0) {
    stdout.write('-1');
  } else {
    stdout.write('0');
  }
}
