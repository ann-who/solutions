// https://informatics.msk.ru/mod/statements/view.php?id=249&chapterid=3062#1

import 'dart:convert';
import 'dart:io';

void main() {
  int kilometersFirstDay = int.parse(stdin.readLineSync(encoding: utf8)!);
  int kilometersXDay = int.parse(stdin.readLineSync(encoding: utf8)!);

  int daysInWay = 1;
  double kilometersNextDay = kilometersFirstDay.toDouble();
  double kilometersIncreasing = kilometersNextDay / 10;
  while (kilometersNextDay < kilometersXDay) {
    kilometersNextDay += kilometersIncreasing;
    kilometersIncreasing = kilometersNextDay / 10;
    ++daysInWay;
  }
  stdout.write(daysInWay);
}
