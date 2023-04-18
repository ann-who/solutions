// https://informatics.msk.ru/mod/statements/view.php?id=282&chapterid=364#1

// Заполнение диагоналями

// Числа по модулю не превышают 231-1.
// Даны числа n и m. Создайте массив A[n][m] и заполните его, как показано на примере.

// Входные данные
// Программа получает на вход два числа n и m.

// Выходные данные
// Программа должна вывести  полученный массив.

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
  List<int> numbers = elements.map(int.parse).toList();

  int rowsQuantity = numbers[0];
  int columnsQuantity = numbers[1];

  // Create a matrix based on given size
  List<List<int>> matrix = List.generate(
    rowsQuantity,
    (row) => List.filled(columnsQuantity, 0, growable: false),
    growable: false,
  );

  int startInt = 0;
  int startIndexRow = 0;

  // Fill matrix by diagonal
  for (var row = 0; row < rowsQuantity; row++) {
    if (row == 0) {
      for (var column = 0; column < columnsQuantity; column++) {
        startIndexRow = 0;
        for (var startIndexColumn = column;
            startIndexColumn >= 0 && startIndexRow < rowsQuantity;
            startIndexColumn--) {
          matrix[startIndexRow][startIndexColumn] = startInt;
          startInt++;
          startIndexRow++;
        }
      }
    } else {
      for (var column = columnsQuantity - 1;
          column < matrix[row].length;
          column++) {
        startIndexRow = row;
        for (var startIndexColumn = column;
            startIndexColumn >= 0 && startIndexRow < rowsQuantity;
            startIndexColumn--) {
          matrix[startIndexRow][startIndexColumn] = startInt;
          startInt++;
          startIndexRow++;
        }
      }
    }
  }

  // Print diagonal filled matrix
  for (var r = 0; r < rowsQuantity; r++) {
    for (var c = 0; c < columnsQuantity; c++) {
      stdout.write('${matrix[r][c]} ');
    }
    stdout.write('\n');
  }
}
