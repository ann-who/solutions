// https://informatics.msk.ru/mod/statements/view.php?id=248&chapterid=105#1

// Совпадают ли строки?

// Ввод и вывод данных производятся через стандартные потоки ввода-вывода.
// Напишите функцию bool Compare(string S1, string S2), определяющую, совпадают ли 2 строки.

// Входные данные
// Заданы 2 строки.

// Выходные данные
// Необходимо вывести  слово yes, если строки совпадают, и слово no в противном случае.

import 'dart:convert';
import 'dart:io';

void main() {
  String firstString = stdin.readLineSync(encoding: utf8)!;
  String secondString = stdin.readLineSync(encoding: utf8)!;

  stdout.write(compare(firstString, secondString));
}

bool compare(String s1, String s2) {
  bool areStringsSame = true;
  if (s2.length > s1.length) {
    return areStringsSame = false;
  } else {
    for (var i = 0; i < s1.length; i++) {
      if (s1[i] != s2[i]) {
        return areStringsSame = false;
      }
      if (areStringsSame == false) {
        break;
      }
    }
  }
  return areStringsSame;
}
