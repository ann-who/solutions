// https://informatics.msk.ru/mod/statements/view.php?id=282&chapterid=1458#1

// Переворот

// Дан массив N × M. Требуется повернуть его по часовой стрелке на 90 градусов.

// Входные данные
// На первой строке даны натуральные числа N и M (1 ≤ N, M ≤ 50). На следующих N строках записано по M неотрицательных чисел, не превышающих 109 – сам массив.

// Выходные данные
// Выведите повернутый массив в формате входных данных.

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
  List<int> numbers = elements.map(int.parse).toList();

  int rowsQuantity = numbers[0];
  int columnsQuantity = numbers[1];

  // Fill given matrix

  List<List<int>> givenMatrix = [];

  for (var i = 0; i < rowsQuantity; i++) {
    List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
    List<int> filledRow = elements.map(int.parse).toList();
    givenMatrix.add(filledRow);
  }

  // Create wanted matrix "template" (90* turn)
  List<List<dynamic>> matrix = List.generate(
    columnsQuantity,
    (row) => List.filled(rowsQuantity, 0, growable: false),
    growable: false,
  );

  // Fill turned matrix with values

  int startRowIndex = 0; // indexes in turned matrix
  int startColumnIndex = 0;

  for (var column = 0; column < columnsQuantity; column++, startRowIndex++) {
    for (var row = rowsQuantity - 1; row >= 0; row--, startColumnIndex++) {
      matrix[startRowIndex][startColumnIndex] = givenMatrix[row][column];
    }

    startColumnIndex = 0;
  }

  // Print turned matrix
  stdout.write('$columnsQuantity $rowsQuantity\n');
  for (var row = 0; row < columnsQuantity; row++) {
    for (var column = 0; column < rowsQuantity; column++) {
      stdout.write('${matrix[row][column]} ');
    }
    stdout.write('\n');
  }
}
