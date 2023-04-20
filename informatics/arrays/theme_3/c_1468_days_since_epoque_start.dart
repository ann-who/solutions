// https://informatics.msk.ru/mod/statements/view.php?id=754&chapterid=1468#1

// Количество дней от начала эры

// Требуется посчитать количество дней от начала эры до данного дня включительно.
// Началом эры считается первое января первого года.

// Входные данные
// В единственной строке входного файла находится дата в формате ДДММГГГГ.

// Выходные данные
// Выведите искомое количество дней.

import 'dart:convert';
import 'dart:io';

void main() {
  String givenDate = stdin.readLineSync(encoding: utf8)!;
  int givenDay = int.parse(givenDate.substring(0, 2));
  int givenMonth = int.parse(givenDate.substring(2, 4));
  int givenYear = int.parse(givenDate.substring(4, 8));

  int startDay = 1;
  int startMonth = 1;
  int startYear = 1;

  List<int> daysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
  int daysInYear = 365;

  bool isLeapYear =
      (givenYear % 4 == 0 && givenYear % 100 != 0) || givenYear % 400 == 0;

  if (isLeapYear) {
    daysInMonth[1] = 29;
    daysInYear = 366;
  }

  int passedYears = 0;
  int passedMonths = 0;
  int passedDaysCounter = 1;

  bool differentYears =
      givenYear > startYear && givenMonth == startMonth && givenDay == startDay;
  bool differentMonthsYears =
      givenYear > startYear && givenMonth > startMonth && givenDay == startDay;
  bool differentDaysMonthsYears =
      givenYear > startYear && givenMonth > startMonth && givenDay > startDay;
  bool differentDaysYears =
      givenYear > startYear && givenMonth == startMonth && givenDay > startDay;
  bool differentDaysMonths =
      givenYear == startYear && givenMonth > startMonth && givenDay > startDay;
  bool differentDays =
      givenYear == startYear && givenMonth == startMonth && givenDay > startDay;
  bool differentMonths =
      givenYear == startYear && givenMonth > startMonth && givenDay == startDay;

  if (differentYears) {
    passedYears = givenYear - startYear;
    passedDaysCounter += passedYears * daysInYear;
  } else if (differentMonthsYears) {
    passedYears = givenYear - startYear;
    passedMonths = givenMonth - startMonth;

    for (var i = 0; i < passedMonths; i++) {
      passedDaysCounter += daysInMonth[i];
    }

    passedDaysCounter += passedYears * daysInYear;
  } else if (differentDaysMonthsYears) {
    passedYears = givenYear - startYear;
    passedMonths = givenMonth - startMonth;

    for (var i = 0; i < passedMonths; i++) {
      passedDaysCounter += daysInMonth[i];
    }

    passedDaysCounter += (passedYears * daysInYear) + (givenDay - startDay);
  } else if (differentDaysYears) {
    passedYears = givenYear - startYear;

    passedDaysCounter += (passedYears * daysInYear) + (givenDay - startDay);
  } else if (differentDaysMonths) {
    passedMonths = givenMonth - startMonth;

    for (var i = 0; i < passedMonths; i++) {
      passedDaysCounter += daysInMonth[i];
    }

    passedDaysCounter += givenDay - startDay;
  } else if (differentDays) {
    passedDaysCounter += givenDay - startDay;
  } else if (differentMonths) {
    passedMonths = givenMonth - startMonth;

    for (var i = 0; i < passedMonths; i++) {
      passedDaysCounter += daysInMonth[i];
    }
  }

  stdout.write(passedDaysCounter);
}
