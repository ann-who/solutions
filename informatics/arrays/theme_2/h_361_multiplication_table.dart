// https://informatics.msk.ru/mod/statements/view.php?id=282&chapterid=361#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
  List<int> tableSize = elements.map(int.parse).toList();

  // Solution 1
  // int rowsQuantity = tableSize[0];
  // int columnsQuantity = tableSize[1];

  // for (var r = 0; r < rowsQuantity; r++) {
  //   for (var c = 0; c < columnsQuantity; c++) {
  //     stdout.write('${r * c} ');
  //   }
  //   stdout.write('\n');
  // }

  // Solution 2
  // int rowsQuantity = tableSize[0];
  // int columnsQuantity = tableSize[1];
  // List<List<int>> matrix = [];

  // for (var r = 0; r < rowsQuantity; r++) {
  //   List<int> filledRow = [];
  //   for (var c = 0; c < columnsQuantity; c++) {
  //     filledRow.add(r * c);
  //   }
  //   matrix.add(filledRow);
  // }
  // for (var i = 0; i < rowsQuantity; i++) {
  //   for (var j = 0; j < columnsQuantity; j++) {
  //     stdout.write('${matrix[i][j]} ');
  //   }
  //   stdout.write('\n');
  // }

  // Solution 3
  int rowsQuantity = tableSize[0];
  int columnsQuantity = tableSize[1];
  int row = 0;
  int column = 0;

  for (var i = 1; i <= rowsQuantity * columnsQuantity; i++) {
    if (i != 1 && i % columnsQuantity == 0) {
      stdout.write('${row * column} ');
      row++;
      column = 0;
      stdout.write('\n');
    } else {
      stdout.write('${row * column} ');
      column++;
    }
  }
}
