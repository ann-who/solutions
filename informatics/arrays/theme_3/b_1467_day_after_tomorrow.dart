// https://informatics.msk.ru/mod/statements/view.php?id=754&chapterid=1467#1

// Послезавтра

// По заданной дате требуется определить, какое число будет послезавтра.

// Напомним, что год является високосным, если его номер кратен 4, но не кратен 100,
// а также если он кратен 400.

// Входные данные
// Дано число, месяц и год (год  – число в промежутке от 1 до 10000).

// Выходные данные
// Требуется вывести, какое число будет послезавтра, в формате входных данных.

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
  List<int> givenDate = elements.map(int.parse).toList();

  int givenDay = givenDate[0];
  int givenMonth = givenDate[1] - 1; // index
  int givenYear = givenDate[2];

  List<int> daysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

  bool isLeapYear =
      (givenYear % 4 == 0 && givenYear % 100 != 0) || givenYear % 400 == 0;

  if (isLeapYear) {
    daysInMonth[1] = 29;
  }

  int futureDay = 0;
  int futureMonth = 0;
  int futureYear = 0;

  // if day after tomorrow is in next month but this year
  if (givenDay + 2 > daysInMonth[givenMonth] &&
      givenMonth + 2 < daysInMonth.length) {
    futureDay = givenDay + 2 - daysInMonth[givenMonth];
    futureMonth = givenMonth + 2;
    futureYear = givenYear;
  }
  // if day after tomorrow is in next month and next year
  else if (givenDay + 2 > daysInMonth[givenMonth] &&
      givenMonth + 2 > daysInMonth.length) {
    futureDay = givenDay + 2 - daysInMonth[givenMonth];
    futureMonth = 1;
    futureYear = givenYear + 1;
  }
  // if day after tomorrow is in current month
  else {
    futureDay = givenDay + 2;
    futureMonth = givenMonth + 1;
    futureYear = givenYear;
  }

  stdout.write('$futureDay $futureMonth $futureYear');
}
