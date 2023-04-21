// https://informatics.msk.ru/mod/statements/view.php?id=1120&chapterid=1479#1

// Даны значения двух моментов времени, принадлежащих одним и тем же суткам:
// часы, потом минуты и секунды для каждого из моментов времени. Известно, что
// второй момент времени наступил не раньше первого. Определите, сколько секунд
// прошло между двумя моментами времени.

// Входные данные
// В первой строке входных данных находятся три целых числа — часы, минуты и
// секунды первого момента времени. Во второй строке — три числа, характеризующие
// второй момент времени. Число часов лежит в диапазоне от 0 до 23, число минут
// и секунд — от 0 до 59.

// Выходные данные
// Выведите число секунд между двумя моментами времени.

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = (stdin.readLineSync(encoding: utf8)!).split(' ');
  List<int> firstEvent = elements.map(int.parse).toList();
  List<String> elementsTwo = (stdin.readLineSync(encoding: utf8)!).split(' ');
  List<int> secondEvent = elementsTwo.map(int.parse).toList();

  int firstSeconds = firstEvent[2];
  int firstMinutes = firstEvent[1];
  int firstHours = firstEvent[0];
  int secondSeconds = secondEvent[2];
  int secondMinutes = secondEvent[1];
  int secondHours = secondEvent[0];

  int secondsInHour = 3600;
  int secondsInMinute = 60;
  int minutesInHour = 60;

  int secondsPassed = 0;

  bool differentHours = secondHours > firstHours &&
      secondMinutes == firstMinutes &&
      secondSeconds == firstSeconds;
  bool differentMinutes = secondHours == firstHours &&
      (secondMinutes > firstMinutes || secondMinutes < firstMinutes) &&
      secondSeconds == firstSeconds;
  bool differentSeconds = secondHours == firstHours &&
      secondMinutes == firstMinutes &&
      (secondSeconds > firstSeconds || secondSeconds < firstSeconds);
  bool differentHoursMinutes = secondHours > firstHours &&
      (secondMinutes > firstMinutes || secondMinutes < firstMinutes) &&
      secondSeconds == firstSeconds;
  bool differentHoursSeconds = secondHours > firstHours &&
      secondMinutes == firstMinutes &&
      (secondSeconds > firstSeconds || secondSeconds < firstSeconds);
  bool differentMinutesSeconds = secondHours == firstHours &&
      (secondMinutes > firstMinutes || secondMinutes < firstMinutes) &&
      (secondSeconds > firstSeconds || secondSeconds < firstSeconds);
  bool differentHoursMinutesSeconds = secondHours > firstHours &&
      (secondMinutes > firstMinutes || secondMinutes < firstMinutes) &&
      (secondSeconds > firstSeconds || secondSeconds < firstSeconds);

  if (differentHours) {
    secondsPassed = (secondHours - firstHours) * secondsInHour;
  } else if (differentMinutes) {
    if (secondMinutes > firstMinutes) {
      secondsPassed = (secondMinutes - firstMinutes) * secondsInMinute;
    } else {
      secondsPassed =
          (minutesInHour - firstMinutes + secondMinutes) * secondsInMinute;
    }
  } else if (differentSeconds) {
    if (secondSeconds > firstSeconds) {
      secondsPassed = secondSeconds - firstSeconds;
    } else {
      secondsPassed = secondsInMinute - firstSeconds + secondSeconds;
    }
  } else if (differentHoursMinutes) {
    secondsPassed = (secondHours - firstHours) * secondsInHour;
    if (secondMinutes > firstMinutes) {
      secondsPassed += (secondMinutes - firstMinutes) * secondsInMinute;
    } else {
      secondsPassed +=
          (minutesInHour - firstMinutes + secondMinutes) * secondsInMinute;
    }
  } else if (differentHoursSeconds) {
    secondsPassed = (secondHours - firstHours) * secondsInHour;

    if (secondSeconds > firstSeconds) {
      secondsPassed += secondSeconds - firstSeconds;
    } else {
      secondsPassed += secondsInMinute - firstSeconds + secondSeconds;
    }
  } else if (differentMinutesSeconds) {
    secondsPassed = firstSeconds + secondSeconds;
  } else if (differentHoursMinutesSeconds) {
    secondsPassed = (secondHours - firstHours) * secondsInHour;

    if (secondMinutes > firstMinutes) {
      secondsPassed += (secondMinutes - firstMinutes) * secondsInMinute;
    } else {
      secondsPassed +=
          (minutesInHour - firstMinutes + secondMinutes) * secondsInMinute;
    }

    if (secondSeconds > firstSeconds) {
      secondsPassed += secondSeconds - firstSeconds;
    } else {
      secondsPassed += secondsInMinute - firstSeconds + secondSeconds;
    }
  }

  stdout.write(secondsPassed);
}
