import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  var random = Random();
  int number = random.nextInt(2) + 1;
 // print(number);
  if (number == 1) {
    print("head");
  } else {
    print("tail");
  }
}
