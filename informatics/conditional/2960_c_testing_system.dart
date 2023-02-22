// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=2960#1

import 'dart:convert';
import 'dart:io';

void main() {
  int numberFromTestingSystem = int.parse(stdin.readLineSync(encoding: utf8)!);
  int numberFromStudent = int.parse(stdin.readLineSync(encoding: utf8)!);

  bool isSymmetricAndCorrect =
      numberFromTestingSystem == 1 && numberFromStudent == 1;
  bool isNotSymmectricAndCorrect =
      numberFromTestingSystem != 1 && numberFromStudent != 1;

  if (isSymmetricAndCorrect || isNotSymmectricAndCorrect) {
    stdout.write('YES');
  } else {
    stdout.write('NO');
  }
}
