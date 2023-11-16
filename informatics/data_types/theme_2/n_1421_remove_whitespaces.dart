// https://informatics.msk.ru/mod/statements/view.php?id=248&chapterid=1421#1

// Удали пробелы

// Ввод и вывод данных производятся через стандартные потоки ввода-вывода.
// Дана строка, Вам требуется преобразовать все идущие подряд пробелы в один.

// Входные данные
// Длина строки не превосходит 1000.

// Выходные данные
// Выведите измененную строку.

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> givenElements = (stdin.readLineSync(encoding: utf8)!).split(' ');

  List<String> updatedElements = [];
  for (var i = 0; i < givenElements.length; i++) {
    if (givenElements[i] != '' || i == 0 || i == givenElements.length - 1) {
      updatedElements.add(givenElements[i]);
    }
  }

  String updatedString = updatedElements.join(' ');
  stdout.write(updatedString);
}
