// https://informatics.msk.ru/mod/statements/view.php?id=1120#1

// Кролики

// Всем известен, так называемый, принцип Дирихле, который формулируется следующим образом:

// Предположим, что некоторое число кроликов рассажены в клетках.
// Если число кроликов больше, чем число клеток, то хотя бы в одной из клеток
// будет больше одного кролика.

// В данной задаче мы рассмотрим более общий случай этого классического математического факта.
// Пусть есть n клеток и m зайцев, которых рассадили по этим клеткам.
// Вам требуется расcчитать максимальное количество зайцев,
// которое гарантированно окажется в одной клетке.

// Входные данные
// В первой строке входного файла записаны два натуральных числа n и m. (1 ≤ n, m ≤ 109).

// Выходные данные
// В выходной файл выведите ответ на задачу.

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = (stdin.readLineSync(encoding: utf8)!).split(' ');
  List<int> numbers = elements.map(int.parse).toList();

  int cages = numbers[0];
  int rabbits = numbers[1];

  int rabbitsInCage = rabbits ~/ cages;
  int extraRabbits = rabbits - (rabbitsInCage * cages);
  int cageWithExtraRabbits = rabbitsInCage + extraRabbits;

  stdout.write(cageWithExtraRabbits);
}
