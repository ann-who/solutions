// https://informatics.msk.ru/mod/statements/view.php?id=248&chapterid=103#1

// Перевести символ в верхний регистр

// Ввод и вывод данных производятся через стандартные потоки ввода-вывода.

// Напишите функцию, которая переводит данный символ в верхний регистр.

// Входные данные
// Задан один символ c.

// Выходные данные
// Если символ является строчной буквой латинского алфавита (то есть буквой от a до z),
// выведите вместо него аналогичную заглавную букву, иначе выведите тот же самый
// символ (такая операция называется "перевод в верхний регистр").

import 'dart:convert';
import 'dart:io';

String toUpperCase(String character) {
  return character.toUpperCase();
}

void main() {
  String givenElement = stdin.readLineSync(encoding: utf8)!;

  stdout.write(toUpperCase(givenElement));
}
