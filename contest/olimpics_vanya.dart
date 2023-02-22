import 'dart:convert';
import 'dart:io';

// https://informatics.msk.ru/mod/statements/view.php?id=280&chapterid=333#1
void main() {
  File inputFile = File('input.txt');
  var lines = inputFile.readAsLinesSync();
  var a = int.parse(lines[0]);
  var b = int.parse(lines[1]);

  for (var i = a; i <= b; i = i + 2) {
    stdout.write('$i ');
  }
}
