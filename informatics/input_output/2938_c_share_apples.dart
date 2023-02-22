// https://informatics.msk.ru/mod/statements/view.php?id=2296&chapterid=2938#1

import 'dart:convert';
import 'dart:io';

void main() {
  int students = int.parse(stdin.readLineSync(encoding: utf8)!);
  int totalApples = int.parse(stdin.readLineSync(encoding: utf8)!);

  int applesForEach = totalApples ~/ students;

  stdout.write(applesForEach);
}
