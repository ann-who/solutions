// https://informatics.msk.ru/mod/statements/view.php?id=282&chapterid=363#1

// Заполнение змейкой

// Даны числа n и m. Создайте массив A[n][m] и заполните его змейкой (см. пример).

// Входные данные
// Программа получает на вход два числа n и m.

// Выходные данные
// Программа должна вывести  полученный массив, отводя на вывод каждого числа ровно 3 символа.

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

  // Fill matrix like a snake

  // Solution 1

  // for (var row = 0; row < rowsQuantity; row++) {
  //   if (row % 2 == 0) {
  //     for (var col = 0; col < matrix[row].length; col++) {
  //       matrix[row][col] = startInt;
  //       startInt++;
  //     }
  //   } else {
  //     for (var col = matrix[row].length - 1; col >= 0; col--) {
  //       matrix[row][col] = startInt;
  //       startInt++;
  //     }
  //   }
  // }

  // Solution 2

  for (var row = 0; row < rowsQuantity; row++) {
    bool toRight = row % 2 == 0;
    int step = toRight ? 1 : -1;
    for (var col = toRight ? 0 : matrix[row].length - 1;
        toRight ? col < matrix[row].length : col >= 0;
        col = col + step) {
      matrix[row][col] = startInt;
      startInt++;
    }
  }

  // Print matrix like a snake
  for (var r = 0; r < rowsQuantity; r++) {
    for (var c = 0; c < columnsQuantity; c++) {
      stdout.write('${matrix[r][c]} ');
    }
    stdout.write('\n');
  }
}
