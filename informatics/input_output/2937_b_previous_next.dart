// https://informatics.msk.ru/mod/statements/view.php?id=2296&chapterid=2937#1

import 'dart:convert';
import 'dart:io';

void main() {
  int a = int.parse(stdin.readLineSync(encoding: utf8)!);

  stdout.write('The next number for the number $a is ${a + 1}.\n'
      'The previous number for the number $a is ${a - 1}.');
}
