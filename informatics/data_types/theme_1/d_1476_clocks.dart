// https://informatics.msk.ru/mod/statements/view.php?id=1120&chapterid=1476#1

// Часовая стрелка повернулась с начала суток на d градусов.
// Определите, сколько сейчас целых часов h и целых минут m.

// Входные данные
// На вход программе подается целое число d(0≤d<360).

// Выходные данные
// Выведите на экран фразу:
// It is ... hours ... minutes.

import 'dart:convert';
import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync(encoding: utf8)!);

  double degreesInMinute = 0.5;
  int degreesInHour = 30;

  int hours = number ~/ degreesInHour;
  number -= degreesInHour * hours;
  int minutes = number ~/ degreesInMinute;

  stdout.write('It is $hours hours $minutes minutes.');
}
