// Вася занимается строительством лесенок из блоков. Лесенка состоит из ступенек, при этом i-ая ступенька должна состоять ровно из i блоков.

// По заданному числу блоков n определите максимальное количество ступенек в лесенке, которую можно построить из этих блоков.

// Формат ввода
// Ввводится одно число n (1 ≤ n ≤ 231 - 1).

// Формат вывода
// Выведите одно число — количество ступенек в лесенке.

import 'dart:convert';
import 'dart:io';

void main() {
  int totalBlocsQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);
  int blocsRested = totalBlocsQuantity;
  int stepsCounter = 1;

  for (var blocs = 1; blocs <= totalBlocsQuantity; blocs++) {
    blocsRested = totalBlocsQuantity - blocs;
    totalBlocsQuantity = blocsRested;

    if (blocsRested <= blocs) {
      break;
    }
    ++stepsCounter;
  }

  stdout.write(stepsCounter);
}
