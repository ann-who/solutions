// https://informatics.msk.ru/mod/statements/view.php?id=2296&chapterid=2939#1

import 'dart:convert';
import 'dart:io';

void main() {
  int students = int.parse(stdin.readLineSync(encoding: utf8)!);
  int totalApples = int.parse(stdin.readLineSync(encoding: utf8)!);

  int applesInBasket = totalApples % students;

  stdout.write(applesInBasket);
}
