// https://informatics.msk.ru/mod/statements/view.php?id=248&chapterid=2797#1

// Второклассная задача

// Ввод и вывод данных производятся через стандартные потоки ввода-вывода.

// У второклассников очень популярна следующая задача:
// 101=1
// 8181515=4
// 1111112=0
// 8888888=14
// 1010101=3
// 7000007=?

// Преподавателю программирования в некоем Центре для одаренных детей так
// понравилась эта задачка, что он решил именно ее использовать для проверки
// знаний математики 2-го класса у своих учеников.

// Пусть первое число x, а соответствующее ему n

// Входные данные
// Единственное неотрицательное число x, не превышающее 101001.

// Выходные данные
// Выведите n.

import 'dart:convert';
import 'dart:io';

void main() {
  String givenString = stdin.readLineSync(encoding: utf8)!;

  var circleCounter = 0;

  for (var i = 0; i < givenString.length; i++) {
    var number = int.parse(givenString[i]);

    if (number == 0 || number == 6 || number == 9) {
      circleCounter++;
    } else if (number == 8) {
      circleCounter += 2;
    }
  }

  stdout.write(circleCounter);
}
