// https://informatics.msk.ru/mod/statements/view.php?id=248&chapterid=112#1

// Является ли строка палиндромом?
// Ввод и вывод данных производятся через стандартные потоки ввода-вывода.
// Дана строка, состоящая из строчных латинских букв и пробелов. Проверьте,
// является ли она палиндромом без учета пробелов.

// Входные данные
// На вход подается 1 строка длины не более 100, содержащая пробелы.
// Подряд может идти произвольное число пробелов.

// Выходные данные
// Необходимо вывести yes, если данная строка является палиндромом, и no в противном случае.

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> givenString = (stdin.readLineSync(encoding: utf8)!).split(' ');
  String joinedString = givenString.join('');

  int midIndex = joinedString.length ~/ 2;
  int lastIndex = joinedString.length - 1;

  bool isPalindrom = true;

  for (var i = 0; i < midIndex; i++) {
    if (joinedString[i] != joinedString[lastIndex - i]) {
      isPalindrom = false;
      break;
    }
  }

  if (isPalindrom) {
    stdout.write('yes');
  } else {
    stdout.write('no');
  }
}
