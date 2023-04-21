// https://informatics.msk.ru/mod/statements/view.php?id=248#1

// Проверить, является ли символ цифрой

// Ввод и вывод данных производятся через стандартные потоки ввода-вывода.
// Напишите функцию, определяющую, является ли данный символ цифрой или нет.

// Естественно, программа должна считывать данные, вызывать эту функцию и выдавать ответ.

// Входные данные
// Задан единственный символ c.

// Выходные данные
// Необходимо вывести  строку yes, если символ является цифрой, и строку no в противном случае.

import 'dart:convert';
import 'dart:io';

bool isNumber(var elementToCkeck) {
  var parsedElement = int.tryParse(elementToCkeck);

  if (parsedElement.runtimeType == int) {
    return true;
  } else {
    return false;
  }
}

void main() {
  var givenElement = stdin.readLineSync(encoding: utf8)!;

  if (isNumber(givenElement) == true) {
    stdout.write('yes');
  } else {
    stdout.write('no');
  }
}
