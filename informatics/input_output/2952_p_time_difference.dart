// https://informatics.msk.ru/mod/statements/view.php?id=2296&chapterid=2952#1

import 'dart:convert';
import 'dart:io';

void main() {
  int firstHours = int.parse(stdin.readLineSync(encoding: utf8)!);
  int firstMinutes = int.parse(stdin.readLineSync(encoding: utf8)!);
  int firstSeconds = int.parse(stdin.readLineSync(encoding: utf8)!);

  int secondHours = int.parse(stdin.readLineSync(encoding: utf8)!);
  int secondMinutes = int.parse(stdin.readLineSync(encoding: utf8)!);
  int secondSeconds = int.parse(stdin.readLineSync(encoding: utf8)!);

  const int secondsPerHour = 3600;
  const int secondsPerMinute = 60;

  int hoursDifferenceInSeconds = (secondHours - firstHours) * secondsPerHour;
  int minutesDifferenceInSeconds =
      (secondMinutes - firstMinutes) * secondsPerMinute;
  int secondsDifference = secondSeconds - firstSeconds;

  int totalSecondsDifference =
      hoursDifferenceInSeconds + minutesDifferenceInSeconds + secondsDifference;

  stdout.write(totalSecondsDifference);
}
