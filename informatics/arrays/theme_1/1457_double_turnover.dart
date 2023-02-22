// https://informatics.msk.ru/mod/statements/view.php?id=208&chapterid=1457#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = (stdin.readLineSync(encoding: utf8)!).split(' ');
  List<int> numbers = elements.map(int.parse).toList();

  List<int> tempList = [];

  List<int> wantedList = List<int>.generate(numbers[0], (index) => index + 1);
  stdout.write(wantedList);

  for (var i = numbers[1] + 1; i <= numbers[2] + 1; i++) {
    tempList.add(numbers[i]);
    stdout.write(tempList);
  }
}
