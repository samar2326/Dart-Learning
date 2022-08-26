import 'dart:io';
import 'player.dart';
import 'board.dart';
import 'play.dart';

void main(List<String> args) {
  List<Player> playerDetail = playerDetails();
  var boardobj = board();
  var gamePlay = Play();
  var frontendBoard = boardobj.createFrontendBoard();
  var backendBoard = boardobj.createBackendBoard();
  boardobj.displayBoard(frontendBoard);
  bool isWin = false;

  for (int i = 0; i < 9 && (isWin == false); i++) {
    int position = gamePlay.moveInput(playerDetail[0].name);

    var bothBoards = boardobj.updateBoard(
        frontendBoard, backendBoard, position, playerDetail[0].choice);
    frontendBoard = bothBoards[0] as List<List<String>>;
    backendBoard = bothBoards[1] as List<List<bool>>;
    boardobj.displayBoard(frontendBoard);
    isWin = gamePlay.ifWin(frontendBoard, playerDetail[0].choice, position);
    if (isWin) {
      print("${playerDetail[0].name.toUpperCase()} WINS !!");
      break;
    }
    position = gamePlay.moveInput(playerDetail[1].name);
    bothBoards = boardobj.updateBoard(
        frontendBoard, backendBoard, position, playerDetail[1].choice);
    frontendBoard = bothBoards[0] as List<List<String>>;
    backendBoard = bothBoards[1] as List<List<bool>>;
    boardobj.displayBoard(frontendBoard);
    isWin = gamePlay.ifWin(frontendBoard, playerDetail[1].choice, position);
    if (isWin) {
      print("${playerDetail[1].name.toUpperCase()} WINS !!");
      break;
    }
  }
}

List<Player> playerDetails() {
  print('Enter Player 1 name');
  String playerName = stdin.readLineSync()!;
  print("Your Choice \npress '1' for '0' \npress '2' for 'X'");
  int playerChoose = int.parse(stdin.readLineSync()!);
  String playerChoice = '';
  if (playerChoose == 1) {
    playerChoice = '0';
  } else {
    playerChoice = 'X';
  }
  var player1 = Player(playerName, playerChoice);
  print('Enter Player 2 name');
  playerName = stdin.readLineSync()!;
  if (playerChoice == '0') {
    playerChoice = 'X';
  } else {
    playerChoice = '0';
  }
  var player2 = Player(playerName, playerChoice);
  List<Player> playerDet = [player1, player2];
  display(player1, player2);
  return playerDet;
}

void display(Player player1, Player player2) {
  print(
      '----------------------------------------------\n\n Player 1 Name : ${player1.name}\n Player 1 Choice : ${player1.choice}\n\n\n Player 2 Name : ${player2.name}\n Player 2 Choice : ${player2.choice} \n\n Let"s Begin the PLAY');
}
