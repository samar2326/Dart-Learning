import 'dart:io';

import 'main.dart';
import 'utilities.dart' as utilities;

class board {
  List<List<List<Object>>> updateBoard(List<List<String>> frontendBoard,
      List<List<bool>> backendBoard, int position, String choice) {
    List<int> index = utilities.numToIndex(position);
    print(position);
    if (backendBoard[index[0]][index[1]] == true) {
      stderr.write("Invalid Move");
    }
    backendBoard[index[0]][index[1]] = true;
    frontendBoard[index[0]][index[1]] = choice;
    List<List<List<Object>>> bothBoard = [frontendBoard, backendBoard];
    return bothBoard;
  }

  List<List<bool>> createBackendBoard() {
    List<List<bool>> backendBoard = [
      [false, false, false],
      [false, false, false],
      [false, false, false]
    ];
    return backendBoard;
  }

  List<List<String>> createFrontendBoard() {
    List<List<String>> frontendBoard = [
      ['1', '2', '3'],
      ['4', '5', '6'],
      ['7', '8', '9']
    ];
    return frontendBoard;
  }

  void displayBoard(var board) {
    for (List element in board) {
      element.forEach((val) {
        stdout.write("${val}  ");
      });
      print('\n');
    }
  }
}
