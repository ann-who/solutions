// https://informatics.msk.ru/mod/statements/view.php?id=754#1

// Юлианский календарь

// По заданному числу n от 1 до 365 определите, на какое число какого месяца
// приходится день невисокосного года с номером n.

// Входные данные
// Дано одно целое число n.

// Выходные данные
// Программа должна вывести два числа: число месяца (от 1 до 31) и номер месяца (от 1 до 12),
// соответствующие  дню  с номером n.

import 'dart:convert';
import 'dart:io';

void main() {
  int wantedDay = int.parse(stdin.readLineSync(encoding: utf8)!);

  int formattedDay = 0;
  int formattedMonth = 0;

  List<int> daysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

  while (daysInMonth[formattedMonth] < wantedDay) {
    wantedDay -= daysInMonth[formattedMonth];
    formattedMonth++;
  }

  formattedDay = wantedDay;
  formattedMonth++; // as we were working with indexes, we add 1 for correct month number

  stdout.write('$formattedDay $formattedMonth');
}
