// https://informatics.msk.ru/mod/statements/view.php?id=280#1

import 'dart:convert';
import 'dart:io';

void main() {
  int a = int.parse(stdin.readLineSync(encoding: utf8)!);
  int b = int.parse(stdin.readLineSync(encoding: utf8)!);

  for (var i = (a + a % 2); i <= b; i += 2) {
    stdout.write('$i ');
  }
}
