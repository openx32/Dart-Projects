import 'dart:io';

void main() {
  String? details() {
    print("Please enter a number:");
    int num1 = int.parse(stdin.readLineSync()!);

    if (num1 > 10) {
      print('Your number is greater than 10');
    } else if (num1 == 10) {
      print('Your number is equal to 10');
    } else if (num1 < 10) {
      print('your number is less than 10');
    }

  }

  print(details());
}
