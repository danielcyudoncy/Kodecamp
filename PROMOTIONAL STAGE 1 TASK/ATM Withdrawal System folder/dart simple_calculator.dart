import 'dart:io';

double add(double x, double y) => x + y;
double subtract(double x, double y) => x - y;
double multiply(double x, double y) => x * y;
double divide(double x, double y) {
  if (y == 0) {
    print('Error! Division by zero.');
    return double.nan;
  }
  return x / y;
}

void main() {
  while (true) {
    print('Select operation:');
    print('1. Add');
    print('2. Subtract');
    print('3. Multiply');
    print('4. Divide');

    stdout.write('Enter choice(1/2/3/4): ');
    String? choice = stdin.readLineSync();

    if (choice == '1' || choice == '2' || choice == '3' || choice == '4') {
      stdout.write('Enter first number: ');
      double? num1 = double.tryParse(stdin.readLineSync()!);
      stdout.write('Enter second number: ');
      double? num2 = double.tryParse(stdin.readLineSync()!);

      if (num1 == null || num2 == null) {
        print('Invalid input. Please enter valid numbers.');
        continue;
      }

      double result;
      switch (choice) {
        case '1':
          result = add(num1, num2);
          print('$num1 + $num2 = $result');
          break;
        case '2':
          result = subtract(num1, num2);
          print('$num1 - $num2 = $result');
          break;
        case '3':
          result = multiply(num1, num2);
          print('$num1 * $num2 = $result');
          break;
        case '4':
          result = divide(num1, num2);
          if (!result.isNaN) {
            print('$num1 / $num2 = $result');
          }
          break;
      }

      stdout.write('Do you want to perform another calculation? (yes/no): ');
      String? nextCalculation = stdin.readLineSync();
      if (nextCalculation?.toLowerCase() != 'yes') {
        break;
      }
    } else {
      print('Invalid input. Please select a valid operation.');
    }
  }
  print('Thank you for using the calculator. Goodbye!');
}
