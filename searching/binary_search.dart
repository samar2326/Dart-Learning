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
  print("enter the item to search");
  int item_to_search = int.parse(stdin.readLineSync()!);
  bool isPresent = false;
  int beg = 0;
  int end = input.length - 1;
  int mid = (beg + (end - beg) / 2).ceil();
  while (beg <= end) {
    mid = (beg + (end - beg) / 2).ceil();
    if (item_to_search == input[mid]) {
      print("item found");
      isPresent = true;
      break;
    } else if (item_to_search > input[mid]) {
      beg = mid + 1;
    } else {
      end = mid - 1;
    }
  }
  if (isPresent == false) {
    print("item not present");
  }
}
