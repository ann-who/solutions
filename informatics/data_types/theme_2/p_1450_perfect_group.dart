// https://informatics.msk.ru/mod/statements/view.php?id=248&chapterid=1450#1

// Идеальный отряд

// Ввод и вывод данных производятся через стандартные потоки ввода-вывода.
// Как вы помните, месклениты отправились в экспедицию. Однажды руководителю
// экспедиции потребовалось отправить на разведку специальный отряд, состоящих
// из лучших мескленитов. Для этого он выстроил всю команду в шеренгу.

// Цвет панциря каждого мескленита обозначается заглавной латинской буквой
// (от "A" до "Z" ). В целях экономии времени руководитель собирается выбрать
// из шеренги несколько подряд стоящих. Кроме того, он считает, что разведка
// будет более удачной, если выбранный отряд будет симметричен по цветам
// панцирей. Например, отряд "RGBGR" будет симметричным, а отряд "RGRB"  – нет.

// Требуется выбрать из шеренги мескленитов максимально возможный отряд,
// удволетворяющий данным условиям.

// Входные данные
// Дана строка, длина которой не превосходит 255 символов – цвета мескленитов в шеренге.

// Выходные данные
// Выходные данные представляют собой строку – выбраный отряд мескленитов.
// Если возможных вариантов ответа несколько, то требуется вывести находящийся
// ближе к началу шеренги.

import 'dart:convert';
import 'dart:io';

void main() {
  String group = stdin.readLineSync(encoding: utf8)!;

  int startIndex = 0;
  int endIndex = 0;
  int midIndex = 0;

  String perfectGroup = '';
  bool exists = false;

  for (var i = 0; i < group.length; i++) {
    startIndex = i;

    for (var j = i + 1; j < group.length; j++) {
      if (group[startIndex] == group[j]) {
        endIndex = j;
        break;
      }
    }

    midIndex = (endIndex - startIndex) ~/ 2;
    if (midIndex >= 1) {
      for (var i = 0; i <= midIndex; i++) {
        if (group[startIndex + i] != group[endIndex - i]) {
          exists = false;
          break;
        } else {
          exists = true;
        }
      }
    }

    if (exists) {
      for (var i = startIndex; i <= endIndex; i++) {
        perfectGroup += group[i];
      }
      break;
    }
  }

  stdout.write(perfectGroup);
}
