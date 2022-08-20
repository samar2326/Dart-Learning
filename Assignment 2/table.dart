import 'dart:io';

void main(List<String> args) {
  print("enter the number");
  int input = int.parse(stdin.readLineSync()!);
  printTable(input);
}

void printTable(int input) {
  print('table of $input is : ');
  for (int i = 1; i < 11; i++) {
    print(input * i);
  }
}
