// https://informatics.msk.ru/mod/statements/view.php?id=248&chapterid=104#1

// Изменить регистр символа

// Ввод и вывод данных производятся через стандартные потоки ввода-вывода.

// Измените регистр символа, если он был латинской буквой: сделайте его заглавным,
// если он был строчной буквой и наоборот. Для этого напишите отдельную функцию,
// меняющую регистр символа.

// Входные данные
// Задан единственный символ C.

// Выходные данные
// Необходимо вывести  получившийся символ.

import 'dart:convert';
import 'dart:io';

void main() {
  String givenElement = stdin.readLineSync(encoding: utf8)!;

  stdout.write(changeRegister(givenElement));
}

String changeRegister(String character) {
  const List<String> upperLetters = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z'
  ];
  if (upperLetters.contains(character)) {
    return character.toLowerCase();
  } else {
    return character.toUpperCase();
  }
}
