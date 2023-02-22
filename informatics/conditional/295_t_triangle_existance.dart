// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=295#1

import 'dart:convert';
import 'dart:io';

void main() {
  int triangleSide1 = int.parse(stdin.readLineSync(encoding: utf8)!);
  int triangleSide2 = int.parse(stdin.readLineSync(encoding: utf8)!);
  int triangleSide3 = int.parse(stdin.readLineSync(encoding: utf8)!);

  // Требуется сравнить длину каждого отрезка-стороны с суммой двух других.
  // Если хотя бы в одном случае отрезок окажется больше суммы двух других,
  // то треугольника с такими сторонами не существует.

  if ((triangleSide1 + triangleSide2) <= triangleSide3 ||
      (triangleSide2 + triangleSide3) <= triangleSide1 ||
      (triangleSide1 + triangleSide3) <= triangleSide2) {
    stdout.write('No');
  } else {
    stdout.write('Yes');
  }
}
