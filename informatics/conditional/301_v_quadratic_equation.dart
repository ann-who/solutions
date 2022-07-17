// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=301#1

import 'dart:convert';
import 'dart:io';
import 'dart:math';

// Чтобы определить, сколько корней имеет уравнение, нужно обратить внимание на дискриминант.
// Чтобы его найти, берем формулу: D = b2 − 4ac. А вот свойства дискриминанта:
// если D < 0, корней нет;
// если D = 0, есть один корень;
// если D > 0, есть два различных корня.

void main() {
  int a = int.parse(stdin.readLineSync(encoding: utf8)!);
  int b = int.parse(stdin.readLineSync(encoding: utf8)!);
  int c = int.parse(stdin.readLineSync(encoding: utf8)!);

  int D = b * b - 4 * a * c;

  if (D == 0) {
    double x = (-b / 2 * a);
    stdout.write(x);
  } else if (D > 1) {
    double x1 = (-b + sqrt(D)) / (2 * a);
    double x2 = (-b - sqrt(D)) / (2 * a);
    stdout.write('$x1 $x2');
  }
}
