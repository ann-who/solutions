// https://informatics.msk.ru/mod/statements/view.php?id=248&chapterid=1415#1

// Шифр Юлия
// Ввод и вывод данных производятся через стандартные потоки ввода-вывода.
// Юлий Цезарь использовал свой способ шифрования текста. Каждая буква заменялась
// на следующую по алфавиту через K позиций по кругу. Необходимо по заданной
// шифровке определить исходный текст.

// Входные данные
// В первой строке дана шифровка, состоящая из заглавных латинских букв.
// Во второй строке число K (1 ≤ K ≤ 10).

// Выходные данные
// Требуется вывести результат расшифровки.

import 'dart:convert';
import 'dart:io';

void main() {
  String encodedString = stdin.readLineSync(encoding: utf8)!;
  int codeStep = int.parse(stdin.readLineSync(encoding: utf8)!);

  const List<String> alphabet = [
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

  String decodedString = '';

  for (var i = 0; i < encodedString.length; i++) {
    int indexInAlphabet = 0;

    for (var j = 0; j < alphabet.length; j++) {
      if (encodedString[i] == alphabet[j]) {
        indexInAlphabet = j;

        if (indexInAlphabet - codeStep >= 0) {
          decodedString += alphabet[indexInAlphabet - codeStep];
        } else {
          indexInAlphabet = alphabet.length + j - codeStep;
          decodedString += alphabet[indexInAlphabet];
        }
      }
    }
  }

  stdout.write(decodedString);
}
