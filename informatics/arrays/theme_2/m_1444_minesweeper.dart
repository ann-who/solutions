// https://informatics.msk.ru/mod/statements/view.php?id=282&chapterid=1444#1

// Сапер

// Напишите программу, отображающую игровое поле для игры "Сапер".

// Входные данные
// Даны числа N и M (целые, положительные, не превышают 32) – количество строк и столбцов в поле соответственно,
// далее число W (целое, неотрицательное, не больше 1000) – количество мин на поле,
// далее следует W пар чисел, координаты мины на поле (первое число – строка, второе число – столбец).

// Выходные данные
// Требуется вывести на экран поле. Формат вывода указан в примере.

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
  List<int> numbers = elements.map(int.parse).toList();

  int rowsQuantity = numbers[0];
  int columnsQuantity = numbers[1];

  int minesQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);

  List<List<int>> minesCoordinates = [];

  for (var i = 0; i < minesQuantity; i++) {
    List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
    List<int> coordinates = elements.map(int.parse).toList();
    minesCoordinates.add(coordinates);
  }

  // Create a matrix based on given size
  List<List<dynamic>> matrix = List.generate(
    rowsQuantity,
    (row) => List.filled(columnsQuantity, 0, growable: false),
    growable: false,
  );

  // Fill field with mines
  for (var i = 0; i < minesQuantity; i++) {
    int row = minesCoordinates[i][0] - 1;
    int column = minesCoordinates[i][1] - 1;
    matrix[row][column] = '*';
  }

  for (var row = 0; row < rowsQuantity; row++) {
    for (var column = 0; column < columnsQuantity; column++) {
      if (matrix[row][column] != '*') {
        // Check squares "inside" the field
        if (row != 0 &&
            column != 0 &&
            row != rowsQuantity - 1 &&
            column != columnsQuantity - 1) {
          int minesCounter = 0;
          if (matrix[row - 1][column - 1] == '*') {
            minesCounter++;
          }
          if (matrix[row - 1][column] == '*') {
            minesCounter++;
          }
          if (matrix[row - 1][column + 1] == '*') {
            minesCounter++;
          }
          if (matrix[row][column - 1] == '*') {
            minesCounter++;
          }
          if (matrix[row][column + 1] == '*') {
            minesCounter++;
          }
          if (matrix[row + 1][column - 1] == '*') {
            minesCounter++;
          }
          if (matrix[row + 1][column] == '*') {
            minesCounter++;
          }
          if (matrix[row + 1][column + 1] == '*') {
            minesCounter++;
          }

          matrix[row][column] = minesCounter;
        }
        // Check first row
        else if (row == 0 && column != 0 && column != columnsQuantity - 1) {
          int minesCounter = 0;
          if (matrix[row][column - 1] == '*') {
            minesCounter++;
          }
          if (matrix[row][column + 1] == '*') {
            minesCounter++;
          }
          if (matrix[row + 1][column - 1] == '*') {
            minesCounter++;
          }
          if (matrix[row + 1][column] == '*') {
            minesCounter++;
          }
          if (matrix[row + 1][column + 1] == '*') {
            minesCounter++;
          }

          matrix[row][column] = minesCounter;
        }
        // Check last row
        else if (row == rowsQuantity - 1 &&
            column != 0 &&
            column != columnsQuantity - 1) {
          int minesCounter = 0;
          if (matrix[row][column - 1] == '*') {
            minesCounter++;
          }
          if (matrix[row][column + 1] == '*') {
            minesCounter++;
          }
          if (matrix[row - 1][column - 1] == '*') {
            minesCounter++;
          }
          if (matrix[row - 1][column] == '*') {
            minesCounter++;
          }
          if (matrix[row - 1][column + 1] == '*') {
            minesCounter++;
          }

          matrix[row][column] = minesCounter;
        }
        // Check first column
        else if (row != 0 && row != rowsQuantity - 1 && column == 0) {
          int minesCounter = 0;
          if (matrix[row][column + 1] == '*') {
            minesCounter++;
          }
          if (matrix[row - 1][column] == '*') {
            minesCounter++;
          }
          if (matrix[row - 1][column + 1] == '*') {
            minesCounter++;
          }
          if (matrix[row + 1][column] == '*') {
            minesCounter++;
          }
          if (matrix[row + 1][column + 1] == '*') {
            minesCounter++;
          }

          matrix[row][column] = minesCounter;
        } // Check last column
        else if (row != 0 &&
            row != rowsQuantity - 1 &&
            column == columnsQuantity - 1) {
          int minesCounter = 0;
          if (matrix[row][column - 1] == '*') {
            minesCounter++;
          }
          if (matrix[row - 1][column] == '*') {
            minesCounter++;
          }
          if (matrix[row - 1][column - 1] == '*') {
            minesCounter++;
          }
          if (matrix[row + 1][column] == '*') {
            minesCounter++;
          }
          if (matrix[row + 1][column - 1] == '*') {
            minesCounter++;
          }

          matrix[row][column] = minesCounter;
        }
        // Check top left corner
        else if (row == 0 && column == 0) {
          int minesCounter = 0;
          if (matrix[row][column + 1] == '*') {
            minesCounter++;
          }
          if (matrix[row + 1][column] == '*') {
            minesCounter++;
          }
          if (matrix[row + 1][column + 1] == '*') {
            minesCounter++;
          }
          matrix[row][column] = minesCounter;
        }
        // Check bottom left corner
        else if (row == rowsQuantity - 1 && column == 0) {
          int minesCounter = 0;
          if (matrix[row][column + 1] == '*') {
            minesCounter++;
          }
          if (matrix[row - 1][column] == '*') {
            minesCounter++;
          }
          if (matrix[row - 1][column + 1] == '*') {
            minesCounter++;
          }
          matrix[row][column] = minesCounter;
        }
        // Check top right corner
        else if (row == 0 && column == columnsQuantity - 1) {
          int minesCounter = 0;
          if (matrix[row][column - 1] == '*') {
            minesCounter++;
          }
          if (matrix[row + 1][column] == '*') {
            minesCounter++;
          }
          if (matrix[row + 1][column - 1] == '*') {
            minesCounter++;
          }
          matrix[row][column] = minesCounter;
        }
        // Check bottom right corner
        else if (row == rowsQuantity - 1 && column == columnsQuantity - 1) {
          int minesCounter = 0;
          if (matrix[row][column - 1] == '*') {
            minesCounter++;
          }
          if (matrix[row - 1][column] == '*') {
            minesCounter++;
          }
          if (matrix[row - 1][column - 1] == '*') {
            minesCounter++;
          }
          matrix[row][column] = minesCounter;
        }
      }
    }
  }

  // Print minesweeper field
  for (var r = 0; r < rowsQuantity; r++) {
    for (var c = 0; c < columnsQuantity; c++) {
      stdout.write('${matrix[r][c]} ');
    }
    stdout.write('\n');
  }
}
