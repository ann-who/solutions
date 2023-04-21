// https://informatics.msk.ru/mod/statements/view.php?id=248&chapterid=109#1

// Две одинаковые буквы
// Ввод и вывод данных производятся через стандартные потоки ввода-вывода.
// Дана строка. Известно, что она содержит ровно две одинаковые буквы.
// Найдите эти буквы. Гарантируется, что повторяются буквы только одного вида.

// Входные данные
// На вход подается 1 строка.

// Выходные данные
// Необходимо вывести  букву, которая встречается в строке дважды.

import 'dart:convert';
import 'dart:io';

void main() {
  String line = stdin.readLineSync(encoding: utf8)!;

  String sameLetter = '';

  for (var i = 0; i < line.length; i++) {
    for (var j = i + 1; j < line.length; j++) {
      if (line[i] == line[j]) {
        sameLetter = line[i];
        break;
      }
    }
  }

  stdout.write(sameLetter);
}
