// https://informatics.msk.ru/mod/statements/view.php?id=2296&chapterid=2948#1

import 'dart:convert';
import 'dart:io';

void main() {
  int secondsPassed = int.parse(stdin.readLineSync(encoding: utf8)!);
  const int secondsInMinute = 60;
  const int minutesPerHour = 60;
  const int hoursInDay = 24;

  int seconds = secondsPassed % secondsInMinute;
  int minutes = (secondsPassed ~/ secondsInMinute) % minutesPerHour;
  int hours =
      (secondsPassed ~/ (secondsInMinute * minutesPerHour)) % hoursInDay;

  String formattedMinutes = minutes.toString().padLeft(2, '0');
  String formattedSeconds = seconds.toString().padLeft(2, '0');

  stdout.write('$hours:$formattedMinutes:$formattedSeconds');
}
