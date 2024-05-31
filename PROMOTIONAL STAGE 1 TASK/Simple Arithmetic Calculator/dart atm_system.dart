import 'dart:io';

void main() {
  const String predefinedPin = '1234'; // Predefined PIN for the ATM system
  double balance = 1000.00; // Initial balance

  print('Welcome to the ATM!');
  stdout.write('Please enter your PIN: ');
  String? enteredPin = stdin.readLineSync();

  if (enteredPin == predefinedPin) {
    print('PIN verified.');
    while (true) {
      stdout.write('Enter the amount you want to withdraw: ');
      double? amount = double.tryParse(stdin.readLineSync()!);

      if (amount == null) {
        print('Invalid input. Please enter a valid amount.');
        continue;
      }

      if (amount <= 0) {
        print('Invalid amount. Please enter an amount greater than zero.');
        continue;
      }

      if (amount > balance) {
        print('Insufficient balance. Your current balance is \$${balance.toStringAsFixed(2)}');
      } else {
        balance -= amount;
        print('Withdrawal successful. Your new balance is \$${balance.toStringAsFixed(2)}');
      }

      stdout.write('Do you want to perform another transaction? (yes/no): ');
      String? continueTransaction = stdin.readLineSync();
      if (continueTransaction?.toLowerCase() != 'yes') {
        break;
      }
    }
  } else {
    print('Invalid PIN. Access denied.');
  }

  print('Thank you for using the ATM. Goodbye!');
}
