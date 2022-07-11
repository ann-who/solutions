// https://informatics.msk.ru/mod/statements/view.php?id=2296&chapterid=2947#1

import 'dart:convert';
import 'dart:io';

void main() {
  int givenMinutes = int.parse(stdin.readLineSync(encoding: utf8)!);
  const int minutesPerHour = 60;
  const int hoursInDay = 24;

  int hours = (givenMinutes ~/ minutesPerHour) % hoursInDay;
  int minutes = givenMinutes % minutesPerHour;

  stdout.write('$hours $minutes');
}
