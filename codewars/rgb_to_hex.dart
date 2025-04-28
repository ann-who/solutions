// The rgb function is incomplete.
// Complete it so that passing in RGB decimal values will result in a hexadecimal representation being returned.
// Valid decimal values for RGB are 0 - 255. Any values that fall out of that range must be rounded to the closest valid value.

// Note: Your answer should always be 6 characters long, the shorthand with 3 will not work here.
// Examples (input --> output):

// 255, 255, 255 --> "FFFFFF"
// 255, 255, 300 --> "FFFFFF"
// 0, 0, 0       --> "000000"
// 148, 0, 211   --> "9400D3"

import 'dart:convert';
import 'dart:io';

/// Solution 1
// void main() {
//   List<String> elements = (stdin.readLineSync(encoding: utf8)!).split(',');
//   final integers = elements.map(int.parse).toList();

//   const minNumber = 0;
//   const maxNumber = 255;
//   const hexDivider = 16;
//   const hexLettersEquivalent = {10: 'A', 11: 'B', 12: 'C', 13: 'D', 14: 'E', 15: 'F'};

//   String _parseToHex(int x) {
//     final a = x ~/ hexDivider;
//     final b = x % hexDivider;
//     final hex = '${hexLettersEquivalent[a] ?? '$a'}${hexLettersEquivalent[b] ?? '$b'}';
//     return hex;
//   }

//   String? _checkConstraints(int x) {
//     if (x > maxNumber) return 'FF';
//     if (x < minNumber) return '00';
//     return null;
//   }

//   String rgb(int r, int g, int b) {
//     final rToHex = _checkConstraints(r) ?? '${_parseToHex(r)}';
//     final gToHex = _checkConstraints(g) ?? '${_parseToHex(g)}';
//     final bToHex = _checkConstraints(b) ?? '${_parseToHex(b)}';
//     return '$rToHex$gToHex$bToHex';
//   }

//   final hexValue = rgb(integers[0], integers[1], integers[2]);
//   stdout.write(hexValue);
// }

/// Solution 2
void main() {
  List<String> elements = (stdin.readLineSync(encoding: utf8)!).split(',');
  final integers = elements.map(int.parse).toList();

  String _parseToHex(int x) {
    const minNumber = 0;
    const maxNumber = 255;

    if (x > maxNumber) return 'FF';
    if (x < minNumber) return '00';

    return x.toRadixString(16).toUpperCase().padLeft(2, '0');
  }

  String rgb(int r, int g, int b) {
    final rToHex = _parseToHex(r);
    final gToHex = _parseToHex(g);
    final bToHex = _parseToHex(b);
    return '$rToHex$gToHex$bToHex';
  }

  final hexValue = rgb(integers[0], integers[1], integers[2]);
  stdout.write(hexValue);
}
