// https://informatics.msk.ru/mod/statements/view.php?id=282&chapterid=357#1

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

  int bestTry = 0;
  int bestX = 0;
  int bestY = 0;

  for (var sportsmen = 0; sportsmen < rowsAndColumns[0]; sportsmen++) {
    int sportsmenTry = 0;
    for (var column = 0; column < matrix[sportsmen].length; column++) {
      sportsmenTry = matrix[sportsmen][column];
      if (sportsmenTry > bestTry) {
        bestTry = sportsmenTry;
        bestX = sportsmen;
        bestY = column;
      }
    }
  }

  stdout.write('$bestTry\n$bestX $bestY');
}
