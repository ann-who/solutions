// https://informatics.msk.ru/mod/statements/view.php?id=2296&chapterid=2954#1

import 'dart:convert';
import 'dart:io';

void main() {
  int students = int.parse(stdin.readLineSync(encoding: utf8)!);
  int apples = int.parse(stdin.readLineSync(encoding: utf8)!);

  int studentsWithMoreApples = apples % students; // == Оставшиеся яблоки
  int studentsWithLessApples = (students - studentsWithMoreApples) % students;

  stdout.write(studentsWithLessApples);
}
