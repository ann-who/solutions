// https://informatics.msk.ru/mod/statements/view.php?id=282&chapterid=356#1

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

  int bestResult = 0;
  int bestSportsmen = 0;

  for (var sportsmen = 0; sportsmen < rowsAndColumns[0]; sportsmen++) {
    int sportsmenResult = 0;
    for (var column = 0; column < matrix[sportsmen].length; column++) {
      sportsmenResult += matrix[sportsmen][column];
    }
    if (sportsmenResult > bestResult) {
      bestResult = sportsmenResult;
      bestSportsmen = sportsmen;
    }
  }

  stdout.write('$bestResult\n$bestSportsmen');
}
