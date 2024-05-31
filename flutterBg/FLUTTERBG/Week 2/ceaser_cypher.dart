import 'dart:io';

Map<String, String> getROT13Map() {
  const List<String> ALPHABET = [
    "a",
    "b",
    "c",
    "d",
    "e",
    "f",
    "g",
    "h",
    "i",
    "j",
    "k",
    "l",
    "m",
    "n",
    "o",
    "p",
    "q",
    "r",
    "s",
    "t",
    "u",
    "v",
    "w",
    "x",
    "y",
    "z"
  ];
  const int MOVEMENT = 13;
  Map<String, String> code = {};
  for (int i = 0; i < ALPHABET.length; i++) {
    if (i < MOVEMENT) {
      code[ALPHABET[i]] = ALPHABET[i + MOVEMENT];
      code[ALPHABET[i].toUpperCase()] = ALPHABET[i + MOVEMENT].toUpperCase();
    } else {
      code[ALPHABET[i]] = ALPHABET[i - MOVEMENT];
      code[ALPHABET[i].toUpperCase()] = ALPHABET[i + MOVEMENT].toUpperCase();
    }
  }
  return code;
}

void main(List<String> args) {
  Map<String, String> classified = getROT13Map();
  print('Enter the text you want to be made classified');
  String original = stdin.readLineSync()!;
  String classifiedMessage = '';
  for (String character in original.split('')) {
    if (classified.containsKey(character)) {
      classifiedMessage += classified[character]!;
    } else {
      classifiedMessage += character;
    }
  }
  print(classifiedMessage);
}
