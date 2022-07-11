// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=302#1

import 'dart:convert';
import 'dart:io';

// Если выполняется теорема Пифагора:
// с²=a²+b² , где с - наибольшая сторона, а и b две других, – треугольник прямоугольный.
// Если квадрат наибольшей стороны меньше суммы квадратов двух других сторон:
// с² < a²+b² треугольник остроугольный.
// Если квадрат наибольшей стороны больше суммы квадратов двух других сторон:
// с² > a²+b² – треугольник тупоугольный.

void main() {
  int sideA = int.parse(stdin.readLineSync(encoding: utf8)!);
  int sideB = int.parse(stdin.readLineSync(encoding: utf8)!);
  int sideC = int.parse(stdin.readLineSync(encoding: utf8)!);

  if (sideA + sideB <= sideC ||
      sideB + sideC <= sideA ||
      sideC + sideA <= sideB) {
    stdout.write('impossible');
    return;
  }

  if (sideA >= sideB && sideA >= sideC) {
    int temp = sideC;
    sideC = sideA;
    sideA = temp;
  } else if (sideB >= sideA && sideB >= sideC) {
    int temp = sideC;
    sideC = sideB;
    sideB = temp;
  }

  if (sideC * sideC < sideA * sideA + sideB * sideB) {
    stdout.write('acute');
  } else if (sideC * sideC > sideA * sideA + sideB * sideB) {
    stdout.write('obtuse');
  } else {
    stdout.write('right');
  }
}
