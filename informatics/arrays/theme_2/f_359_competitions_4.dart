// https://informatics.msk.ru/mod/statements/view.php?id=282&chapterid=359#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
  List<int> rowsAndColumns = elements.map(int.parse).toList();

  List<List<int>> matrix = [];

  for (var i = 0; i < rowsAndColumns[0]; i++) {
    List<int> row = [];
    elements = stdin.readLineSync(encoding: utf8)!.split(' ');
    row = elements.map(int.parse).toList();
    matrix.add(row);
  }

  int bestTrySum = 0;
  int firstPlaceCounter = 1;

  for (var sportsmen = 0; sportsmen < rowsAndColumns[0]; sportsmen++) {
    int sportsmenTrySum = 0;
    for (var column = 0; column < matrix[sportsmen].length; column++) {
      sportsmenTrySum += matrix[sportsmen][column];
    }
    if (sportsmenTrySum > bestTrySum) {
      bestTrySum = sportsmenTrySum;
      firstPlaceCounter = 1;
    } else if (sportsmenTrySum == bestTrySum) {
      firstPlaceCounter++;
    }
  }

  stdout.write(firstPlaceCounter);
}
