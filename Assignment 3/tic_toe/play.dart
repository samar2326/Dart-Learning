import 'dart:io';
import 'dart:math';
import 'board.dart';
import 'utilities.dart' as utilities;

class Play {
  bool ifWin(List<List<String>> board, String choice, int position) {
    List<int> index = utilities.numToIndex(position);
    if (checkHorizontal(board, choice, index[0])) {
      return true;
    }
    if (checkVertical(board, choice, index[1])) {
      return true;
    }
    if (checkLeftDiagonal(board, choice)) {
      return true;
    }
    if (checkRightDiagonal(board, choice)) {
      return true;
    }

    return false;
  }

  bool checkHorizontal(List<List<String>> board, String choice, int row) {
    if (board[row][0] == choice &&
        board[row][1] == choice &&
        board[row][2] == choice) {
      return true;
    }
    return false;
  }

  bool checkVertical(List<List<String>> board, String choice, int col) {
    if (board[0][col] == choice &&
        board[1][col] == choice &&
        board[2][col] == choice) {
      return true;
    }
    return false;
  }

  bool checkLeftDiagonal(List<List<String>> board, String choice) {
    if (board[0][0] == choice &&
        board[1][1] == choice &&
        board[2][2] == choice) {
      return true;
    }
    return false;
  }

  bool checkRightDiagonal(List<List<String>> board, String choice) {
    if (board[0][2] == choice &&
        board[1][1] == choice &&
        board[2][0] == choice) {
      return true;
    }
    return false;
  }

  int moveInput(String name) {
    print("${name} Please enter your move position");
    int movePosition = int.parse(stdin.readLineSync()!);
    if (0 < movePosition && movePosition > 10) {
      stderr.write("Invalid Position ..Please Re-enter you position");
      return moveInput(name);
    }
    return movePosition;
  }
}
