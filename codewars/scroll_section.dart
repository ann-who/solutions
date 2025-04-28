// https://www.codewars.com/kata/5cb05eee03c3ff002153d4ef/train/dart

// Your website is divided vertically in sections, and each can be of different size (height).
// You need to establish the section index (starting at 0) you are at, given the scrollY and sizes of all sections.
// Sections start with 0, so if first section is 200 high, it takes 0-199 "pixels" and second starts at 200.
// Example:

// With scrollY = 300 and sizes = [300,200,400,600,100]
// the result will be 1 as it's the second section.

// With scrollY = 1600 and size = [300,200,400,600,100]
// the result will be -1 as it's past last section.

// Given the scrollY integer (always non-negative) and an array of non-negative integers (with at least one element),
// calculate the index (starting at 0) or -1 if scrollY falls beyond last section (indication of an error).

import 'dart:convert';
import 'dart:io';

void main() {
  int scrollY = int.parse(stdin.readLineSync(encoding: utf8)!);
  List<int> blocksSize = stdin.readLineSync(encoding: utf8)!.split(',').map(int.parse).toList();

  stdout.write(getSectionId(scrollY, blocksSize));
}

int getSectionId(int scrollPosition, List<int> blocksSizes) {
  var pixelSum = 0;
  for (var i = 0; i < blocksSizes.length; i++) {
    pixelSum += blocksSizes[i];
    if (scrollPosition < pixelSum) return i;
  }
  return -1;
}
