// https://informatics.msk.ru/mod/statements/view.php?id=2296#1

import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  int a = int.parse(stdin.readLineSync(encoding: utf8)!);
  int b = int.parse(stdin.readLineSync(encoding: utf8)!);

  double hypothenuse = sqrt(a * a + b * b);

  stdout.write(hypothenuse);
}
