// https://informatics.msk.ru/mod/statements/view.php?id=280&chapterid=335#1

import 'dart:convert';
import 'dart:io';

void main() {
  int a = int.parse(stdin.readLineSync(encoding: utf8)!);
  int b = int.parse(stdin.readLineSync(encoding: utf8)!);

  for (var i = a; i <= b; i++) {
    int square = i * i;
    if (square >= a && square <= b) {
      stdout.write('$square ');
    }
  }
}
