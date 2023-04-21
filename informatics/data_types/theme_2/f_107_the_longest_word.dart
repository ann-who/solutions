// https://informatics.msk.ru/mod/statements/view.php?id=248&chapterid=107#1

// Самое длинное слово

// Ввод и вывод данных производятся через стандартные потоки ввода-вывода.
// Дана строка, содержащая пробелы. Найдите в ней самое длинное слово, выведите
// это слово и его длину. Если таких слов несколько, выведите первое из них.

// Входные данные
// Задана одна строка, содержащая пробелы. Слова разделены ровно одним пробелом.
// Пробелы в начале и конце строки допускаются.

// Выходные данные
// Необходимо вывести самое длинное слово в строке и его длину.

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> words = (stdin.readLineSync(encoding: utf8)!).split(' ');

  String longestWord = '';

  for (var i = 0; i < words.length; i++) {
    if (words[i].length > longestWord.length) {
      longestWord = words[i];
    }
  }

  stdout.write('$longestWord\n${longestWord.length}');
}
