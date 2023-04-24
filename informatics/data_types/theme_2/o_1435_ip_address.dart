// https://informatics.msk.ru/mod/statements/view.php?id=248&chapterid=1435#1

// IP-адрес

// Ввод и вывод данных производятся через стандартные потоки ввода-вывода.
// Для того чтобы выходить в Интернет, каждому компьютеру присваивается так
// называемый IP-адрес. Он состоит из четырех целых чисел в диапазоне от 0 до 255,
// разделенных точками. В следующих трех строках показаны три правильных IP-адреса:

// 127.0.0.0
// 192.168.0.01
// 255.00.255.255
// Напишите программу, которая определяет, является ли заданная строка правильным IP-адресом.

// Входные данные
// На вход программе подается строка длиной не более 15 символов, которая включает цифры и ровно три точки.

// Выходные данные
// Если строка является правильным IP-адресом, необходимо вывести 1, иначе 0.

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> givenAddress = (stdin.readLineSync(encoding: utf8)!).split('.');

  bool isCorrect = false;

  if (givenAddress.length != 4) {
    isCorrect = false;
  } else {
    for (var i = 0; i < givenAddress.length; i++) {
      if (int.tryParse(givenAddress[i]) == null ||
          int.parse(givenAddress[i]) < 0) {
        isCorrect = false;
        break;
      } else {
        isCorrect = true;
      }
    }
  }

  if (isCorrect) {
    stdout.write(1);
  } else {
    stdout.write(0);
  }
}
