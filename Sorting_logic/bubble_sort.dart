import 'dart:io';

void main(List<String> args) {
  print("enter the number of input");
  int numberOfInput = int.parse(stdin.readLineSync()!);
  List input = [];
  int i = 0;
  while (numberOfInput > i++) {
    int val = int.parse(stdin.readLineSync()!);
    input.add(val);
  }
  print("Sorted Output");
  //bubble sort logic
  for (int i = 0; i < input.length; i++) {
    for (int j = i + 1; j < input.length; j++) {
      if (input[i] > input[j]) {
        int temp = input[i];
        input[i] = input[j];
        input[j] = temp;
      }
    }
  }
  for (var item in input) {
    print(item);
  }
}
