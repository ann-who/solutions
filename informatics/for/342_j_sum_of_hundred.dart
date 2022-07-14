// https://informatics.msk.ru/mod/statements/view.php?id=280&chapterid=342#1

import 'dart:convert';
import 'dart:io';

void main() {
  int startNumber = int.parse(stdin.readLineSync(encoding: utf8)!);
  int endNumber = int.parse(stdin.readLineSync(encoding: utf8)!);

  int sum = 0;

  for (var i = startNumber; i <= endNumber; i++) {
    sum += i;
  }
  stdout.write(sum);

  // Не поняла по заданию, нужно от 1 до 100 или вообще любой диапазон = 100.
  //Если только от 1 до 100, то вот:

  // for (var i = 1; i <= 100; i++) {
  //   sum += i;
  // }
  // stdout.write(sum);
}
