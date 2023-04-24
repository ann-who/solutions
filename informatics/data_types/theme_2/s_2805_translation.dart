// https://informatics.msk.ru/mod/statements/view.php?id=248&chapterid=2805#1

// Интересный перевод

// Ввод и вывод данных производятся через стандартные потоки ввода-вывода.
// На планете Роботов очень не любят десятичную систему счисления, поэтому они
// попросили Вас написать программу, которая заменяет все встречающиеся в тексте
// числа на эти же числа, но в двоичной системе счисления.

// Входные данные
// Единственная строка, состоящая из любых символов. Длина строки не превышает
// 255 символов. Гарантируется, что во всех числах нет ведущих нулей.

// Выходные данные
// Выведите преобразованную строку.

import 'dart:convert';
import 'dart:io';

void main() {
  String givenString = stdin.readLineSync(encoding: utf8)!;

  String intToTranslate = '';
  String translatedInt = '';
  int intFromString = 0;

  for (var i = 0; i < givenString.length; i++) {
    if (int.tryParse(givenString[i]) != null) {
      intToTranslate += givenString[i];
    } else if (int.tryParse(givenString[i]) == null && intToTranslate != '') {
      intFromString = int.parse(intToTranslate);
    }
    if (i == givenString.length - 1 && intToTranslate != '') {
      intFromString = int.parse(intToTranslate);
    }

    if (intFromString != 0) {
      while (intFromString > 0) {
        if (intFromString % 2 == 0) {
          translatedInt += '0';
          intFromString ~/= 2;
        } else {
          translatedInt += '1';
          intFromString ~/= 2;
        }
      }

      String formattedInt = '';

      for (var i = translatedInt.length - 1; i >= 0; i--) {
        formattedInt += translatedInt[i];
      }

      givenString = givenString.replaceFirst(intToTranslate, formattedInt);
      i += formattedInt.length - 1;
      intToTranslate = '';
      translatedInt = '';
      intFromString = 0;
    }
  }

  stdout.write(givenString);
}
