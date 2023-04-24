// https://informatics.msk.ru/mod/statements/view.php?id=248&chapterid=110#1

// Поиск подстроки
// Ввод и вывод данных производятся через стандартные потоки ввода-вывода.
// Даны две строки. Определите, является ли первая строка подстрокой второй строки.

// Входные данные
// На вход подается 2 строки длины не более 10000, состоящие только из маленьких
// букв латинского алфавита.

// Выходные данные
// Необходимо вывести  слово yes, если первая строка является подстрокой второй
// строки, или слово no в противном случае.

import 'dart:convert';
import 'dart:io';

void main() {
  String firstLine = stdin.readLineSync(encoding: utf8)!;
  String secondLine = stdin.readLineSync(encoding: utf8)!;

  bool isSubstring = false;

  for (var i = 0; i < secondLine.length; i++) {
    int startIndex = i;
    for (var j = 0; j < firstLine.length; j++, startIndex++) {
      if (secondLine[startIndex] != firstLine[j]) {
        isSubstring = false;
        break;
      } else {
        isSubstring = true;
      }
    }

    if (isSubstring == true) {
      break;
    }
  }

  if (isSubstring == true) {
    stdout.write('yes');
  } else {
    stdout.write('no');
  }
}
