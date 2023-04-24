// https://informatics.msk.ru/mod/statements/view.php?id=248&chapterid=111#1

// Капитан Флинт

// Ввод и вывод данных производятся через стандартные потоки ввода-вывода.
// Капитан Флинт зарыл клад на Острове сокровищ. Он оставил описание, как найти клад.
// Описание состоит из строк вида: "North 5", где  слово – одно из "North", "South",
// "East", "West", – задает направление движения, а число – количество шагов, которое
// необходимо пройти в этом направлении.

// Напишите программу, которая по описанию пути к кладу определяет точные координаты
// клада, считая, что начало координат находится в начале пути, ось OX направлена
// на восток, ось OY – на север.

// Входные данные
// На вход подается последовательность строк указанного формата. Гарантируется,
// что числа не превосходят 10(8).

// Выходные данные
// Необходимо вывести  координаты клада – два целых числа через пробел.
// Гарантируется, что эти числа не превосходят 10(8).

import 'dart:convert';
import 'dart:io';

void main() {
  List<dynamic> elements = (stdin.readLineSync(encoding: utf8)!).split(' ');
  Map<String, int> givenCoordinates = {};

  for (var i = 0; i < elements.length; i += 2) {
    givenCoordinates[elements[i]] = int.parse(elements[i + 1]);
  }

  int x = 0;
  int y = 0;

  for (var i = 0; i < givenCoordinates.length; i++) {
    if (givenCoordinates.keys.toList()[i] == 'North') {
      y += givenCoordinates.values.toList()[i];
    } else if (givenCoordinates.keys.toList()[i] == 'South') {
      y -= givenCoordinates.values.toList()[i];
    } else if (givenCoordinates.keys.toList()[i] == 'West') {
      x += givenCoordinates.values.toList()[i];
    } else if (givenCoordinates.keys.toList()[i] == 'East') {
      x -= givenCoordinates.values.toList()[i];
    }
  }

  stdout.write('$x $y');
}
