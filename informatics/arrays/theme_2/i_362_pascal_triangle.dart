// https://informatics.msk.ru/mod/statements/view.php?id=282&chapterid=362#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
  List<int> tableSize = elements.map(int.parse).toList();

  int rowsQuantity = tableSize[0];
  int columnsQuantity = tableSize[1];

  List<List<int>> matrix = [
    for (var row = 0; row < rowsQuantity; row++)
      [
        for (var column = 0; column < columnsQuantity; column++)
          row + column * rowsQuantity
      ],
  ];

  for (var r = 0; r < rowsQuantity; r++) {
    for (var c = 0; c < columnsQuantity; c++) {
      if (r == 0 || c == 0) {
        matrix[r][c] = 1;
      } else {
        matrix[r][c] = matrix[r - 1][c] + matrix[r][c - 1];
      }
    }
  }

  for (var r = 0; r < rowsQuantity; r++) {
    for (var c = 0; c < columnsQuantity; c++) {
      stdout.write('${matrix[r][c]} ');
    }
    stdout.write('\n');
  }
}
