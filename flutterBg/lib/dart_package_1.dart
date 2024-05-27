// dart_package_1.dart
void main() {
  return repeat('Kodecamp 4.0', 20);
}

void repeat(String word, [int? repetitions]) {
  // repetitions is optional
  if (repetitions != null) {
    // check if repetitions was supplied
    for (int i = 0; i < 10; i++) {
      print(word);
    }
  } else {
    // repetitions were not supplied, so just print once
    print(word);
  }
}
