// https://informatics.msk.ru/mod/statements/view.php?id=278&chapterid=317#1

import 'dart:convert';
import 'dart:io';

void main() {
  int degree = int.parse(stdin.readLineSync(encoding: utf8)!);
  int index = int.parse(stdin.readLineSync(encoding: utf8)!);

  int resultNumber = (degree.abs() ~/ (index.abs() * (index - degree).abs()));

  stdout.write(resultNumber);
}
