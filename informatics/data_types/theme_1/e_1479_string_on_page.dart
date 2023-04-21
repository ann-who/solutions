// https://informatics.msk.ru/mod/statements/view.php?id=1120&chapterid=1479#1

// В книге на одной странице помещается k строк. Таким образом, на 1-й странице
// печатаются строки с 1-й по k-ю, на второй — с (k+1)-й по (2k)-ю и т. д.
// Напишите программу, по номеру строки в тексте определяющую номер страницы,
// на которой будет напечатана эта строка, и порядковый номер этой строки на странице.

// Входные данные
// На вход программе подаются число k — количество строк на странице и число
// n  — номер строки в тексте (1≤k≤200, 1≤n≤20000).

// Выходные данные
// Выведите два числа — номер страницы, на которой будет напечатана эта строка,
// и номер строки на этой странице

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = (stdin.readLineSync(encoding: utf8)!).split(' ');
  List<int> numbers = elements.map(int.parse).toList();

  int linesOnPage = numbers[0];
  int lineNumberInText = numbers[1];

  int pageNumber = 1;
  int lineNumberOnPage = 1;

  if (lineNumberInText <= linesOnPage) {
    lineNumberOnPage = lineNumberInText;
  } else {
    pageNumber = (lineNumberInText / linesOnPage).ceil();
    lineNumberOnPage = lineNumberInText - (linesOnPage * (pageNumber - 1));
  }

  stdout.write('$pageNumber $lineNumberOnPage');
}
