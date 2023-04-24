// https://informatics.msk.ru/mod/statements/view.php?id=248&chapterid=1417#1

// Конвертирование
// Ввод и вывод данных производятся через стандартные потоки ввода-вывода.
// Дана строка S, в которой выделили подстроку, состоящую из символов с i-го
// по j-й включительно (символы строки S нумеруются с единицы) и поменяли местами
// i-й символ с j-м, (i+1)-й с (j-1)-м и так далее (конвертировали подстроку).
// Выведите строку S после внесенных изменений.

// Входные данные
// В первой строке входного файла содержится строка S, длиной не более 1000 символов,
// во второй – числа i и  j (i ≤  j).

// Выходные данные
// В выходной файл выведите ответ на задачу.

import 'dart:convert';
import 'dart:io';

void main() {
  String givenString = stdin.readLineSync(encoding: utf8)!;
  List<String> stringElements = givenString.split('');
  List<String> elements = (stdin.readLineSync(encoding: utf8)!).split(' ');
  int firstIndex = int.parse(elements[0]) - 1;
  int secondIndex = int.parse(elements[1]) - 1;

  int midIndex = (firstIndex + secondIndex) ~/ 2;
  int changeStep = 0;

  for (var i = firstIndex; i <= midIndex; i++) {
    var tempLetter = givenString[i];

    stringElements[i] = givenString[secondIndex - changeStep];
    stringElements[secondIndex - changeStep] = tempLetter;

    changeStep++;
  }

  stdout.write(stringElements.join().toString());
}
