// https://informatics.msk.ru/mod/statements/view.php?id=280&chapterid=340#1

import 'dart:convert';
import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync(encoding: utf8)!);

  for (var i = 1; i <= number; i++) {
    if (number % i == 0) {
      stdout.write('$i ');
    }
  }
}
