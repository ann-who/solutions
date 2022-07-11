// https://informatics.msk.ru/mod/statements/view.php?id=2296&chapterid=2950#1

import 'dart:convert';
import 'dart:io';

void main() {
  int lessonsQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);
  int restQuantity = lessonsQuantity - 1;

  const int minutesPerHour = 60;

  const int lessonsStartHour = 9;
  const int lessonDuration = 45;
  const int oddRest = 5; // Нечётные
  const int evenRest = 15; // Чётные

  int lessonsMinutes = lessonDuration * lessonsQuantity;
  int oddRestMinutes = (restQuantity ~/ 2 + restQuantity % 2) * oddRest;
  int evenRestMinutes = (restQuantity ~/ 2) * evenRest;

  int timeInSchool = lessonsMinutes + evenRestMinutes + oddRestMinutes;

  int hours =
      (lessonsStartHour * minutesPerHour + timeInSchool) ~/ minutesPerHour;
  int minutes = timeInSchool % minutesPerHour;

  stdout.write('$hours $minutes');
}
