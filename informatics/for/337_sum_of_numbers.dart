// https://informatics.msk.ru/mod/statements/view.php?id=280&chapterid=337#1

import 'dart:convert';
import 'dart:io';

void main() {
  int x = int.parse(stdin.readLineSync(encoding: utf8)!);

  int sum = 0;

  for (var i = x; i != 0; i ~/= 10) {
    int lastDigit = i % 10;
    sum += lastDigit;
  }

  stdout.write(sum);
}
