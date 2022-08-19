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
  bool itemfound = false;
  for (int i = 0; i < input.length && !itemfound; i++) {
    if (item_to_search == input[i]) {
      itemfound = true;
    }
  }
  if (itemfound) {
    print("item found");
  } else {
    print("item not found");
  }
}
