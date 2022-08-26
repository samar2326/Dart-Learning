import 'dart:io';

List<int> numToIndex(int position) {
  
  int i = 0;
  int j = 0;
  switch (position) {
    case 1:
      i = 0;
      j = 0;
      break;
    case 2:
      i = 0;
      j = 1;
      break;
    case 3:
      i = 0;
      j = 2;
      break;
    case 4:
      i = 1;
      j = 0;
      break;
    case 5:
      i = 1;
      j = 1;
      break;
    case 6:
      i = 1;
      j = 2;
      break;
    case 7:
      i = 2;
      j = 0;
      break;
    case 8:
      i = 2;
      j = 1;
      break;
    case 9:
      i = 2;
      j = 2;
      break;
  }
  List<int> indexes = [i, j];
  return indexes;
}
