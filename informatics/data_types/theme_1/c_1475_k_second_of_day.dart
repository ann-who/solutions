// https://informatics.msk.ru/mod/statements/view.php?id=1120&chapterid=1475#1

// k-ая секунда суток

// Идёт k-я секунда суток. Определите, сколько целых часов h и целых минут m
// прошло с начала суток. Например, если k=13257=3⋅3600+40⋅60+57,
// то h=3 и m=40.

// Входные данные
// На вход программе подается целое число k (0≤k≤86399).

// Выходные данные
// Выведите на экран фразу: It is ... hours ... minutes.

import 'dart:convert';
import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync(encoding: utf8)!);

  int secondsInMinute = 60;
  int secondsInHour = 3600;

  int hours = number ~/ secondsInHour;
  number -= hours * secondsInHour;
  int minutes = number ~/ secondsInMinute;

  stdout.write('It is $hours hours $minutes minutes.');
}
