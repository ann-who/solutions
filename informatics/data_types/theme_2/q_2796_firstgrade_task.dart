// https://informatics.msk.ru/mod/statements/view.php?id=248&chapterid=2796#1

// Первоклассная задача

// Ввод и вывод данных производятся через стандартные потоки ввода-вывода.
// Преподаватель по программированию некоего Центра для одаренных детей, узнав,
// что его ученики знают математику 3-го класса на 97.001 процентов, решил
// проверить их знания по курсу математики 1-го класса. Для этого он взял за
// основу популярнейшую у математиков 1-го класса задачу. Первоклассник должен
// был продолжить следующую последовательность рядов:

// 1
// 11
// 21
// 1211
// 111221
// 312211
// 13112221

// Входные данные
// В единственной строке входного файла записаны два целых числа через пробел:
// x(0<=x<=100) - первый член последовательности и n(1<=n<=25).

// Выходные данные
// Выведите n-ый ряд x-ой последовательности

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> givenNumbers = (stdin.readLineSync(encoding: utf8)!).split(' ');

  var firstElement = givenNumbers[0];
  var rowNumber = int.parse(givenNumbers[1]);

  var currentRow = firstElement;
  var currentRowElements = [];

  for (var i = 0; i < currentRow.length; i++) {
    currentRowElements.add(int.parse(currentRow[i]));
  }

  if (rowNumber != 1) {
    for (var j = 1; j < rowNumber; j++) {
      var updatedRow = [];
      var elementCounter = 1;

      for (var i = 0; i < currentRowElements.length; i++) {
        if (currentRowElements.length == 1 ||
            i == currentRowElements.length - 1) {
          updatedRow.add(elementCounter);
          updatedRow.add(currentRowElements[i]);
          elementCounter = 1;
        } else if (currentRowElements[i] == currentRowElements[i + 1]) {
          elementCounter++;
        } else {
          updatedRow.add(elementCounter);
          updatedRow.add(currentRowElements[i]);
          elementCounter = 1;
        }
      }
      currentRowElements = updatedRow;
      currentRow = currentRowElements.join();
    }

    stdout.write(currentRow);
  } else {
    stdout.write(currentRow);
  }
}
