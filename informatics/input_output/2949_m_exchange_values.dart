// https://informatics.msk.ru/mod/statements/view.php?id=2296&chapterid=2949#1

import 'dart:convert';
import 'dart:io';

void main() {
  int a = int.parse(stdin.readLineSync(encoding: utf8)!);
  int b = int.parse(stdin.readLineSync(encoding: utf8)!);

  int temp = a;
  a = b;
  b = temp;

  stdout.write('$a $b');
}
