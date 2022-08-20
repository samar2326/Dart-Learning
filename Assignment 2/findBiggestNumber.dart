import 'dart:io';

void main(List<String> args) {
  print("Enter a number");
  int input = int.parse(stdin.readLineSync()!);
  print("Biggest Number of series :  ${biggestNumOfSeries(input)}");
}

int biggestNumOfSeries(int input) {
  List<int> digitArray = bubbleSort(numToArray(input));
  return (arrayToNum(digitArray));
}

List<int> numToArray(int input) {
  int quo = input;
  int rem;
  List<int> inpur_digit_array = [];
  while (quo ~/ 10 != 0) {
    rem = quo % 10;
    inpur_digit_array.add(rem);
    quo = quo ~/ 10;
  }
  rem = quo % 10;
  inpur_digit_array.add(rem);
  return inpur_digit_array;
}

List<int> bubbleSort(List<int> input) {
  for (int i = 0; i < input.length; i++) {
    for (int j = i + 1; j < input.length; j++) {
      if (input[i] > input[j]) {
        int temp = input[i];
        input[i] = input[j];
        input[j] = temp;
      }
    }
  }
  return input;
}

int arrayToNum(List<int> input) {
  int output = 0;
  int multiplier = 1;
  for (int val in input) {
    output = val * multiplier + output;
    multiplier = multiplier * 10;
  }
  return output;
}
