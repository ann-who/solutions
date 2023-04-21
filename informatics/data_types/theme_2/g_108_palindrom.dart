// https://informatics.msk.ru/mod/statements/view.php?id=248&chapterid=108#1

// Является ли слово палиндромом?

// Ввод и вывод данных производятся через стандартные потоки ввода-вывода.
// По данной строке определите, является ли она палиндромом (то есть, можно ли
// прочесть ее наоборот, как, например, слово "топот").

// Входные данные
// На вход подается 1 строка без пробелов.

// Выходные данные
// Необходимо вывести  yes, если строка является палиндромом, и no в противном случае.

import 'dart:convert';
import 'dart:io';

void main() {
  String word = stdin.readLineSync(encoding: utf8)!;

  bool isPalindrom = true;
  int midIndex = word.length ~/ 2;

  for (var i = 0; i <= midIndex; i++) {
    if (word[i] != word[word.length - 1 - i]) {
      isPalindrom = false;
    }
  }

  if (isPalindrom) {
    stdout.write('yes');
  } else {
    stdout.write('no');
  }
}
