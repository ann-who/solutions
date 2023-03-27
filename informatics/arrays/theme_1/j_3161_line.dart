// https://informatics.msk.ru/mod/statements/view.php?id=2741&chapterid=3161#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
  List<int> studentsHeights = elements.map(int.parse).toList();
  int newStudentHeight = int.parse(stdin.readLineSync(encoding: utf8)!);

  int newStudentPlace = 1;

  for (var i = 0; i < studentsHeights.length; i++) {
    if (newStudentHeight <= studentsHeights[i]) {
      newStudentPlace = i + 2;
    }
  }

  stdout.write(newStudentPlace);
}
