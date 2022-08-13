import 'dart:io';
import 'game.dart';
void main() {
  int check = 0;
  int c = 0;
  int list1 = 0;
  int count = 0;
  List<int> myList = [];
  while (check == 0) {
    list1 += 1;
    int result = 0;
    stdout.write(" Enter a maximum number to random ➜ ");
    var input = stdin.readLineSync();
    var type = int.tryParse(input!);
    if (type == null) {
      type = 100;
    }
    var game = Game(maxRandom: type);
    print('                                🎮                              ');
    print(" ╔═══════════════════════ GUESS THE NUMBER ══════════════════════════╗ ");
    //print(" Please guess the number between 1 and 100 inclustive ");
    do {
      stdout.write(
          " ║ Please guess the number between 1 and $type inclustive ➜ ");
      var input = stdin
          .readLineSync(); // readLineSync == อาจจะ retrue เป็น "null
      var guess = int.tryParse(input!);
      if (guess == null) {
        print(' ║ Plsease enter number only');
        continue;
      }
      result = game.getguess(guess);
      if (result == 1) {
        check = 1;
      }
    }
    while (result != 1);
    myList.add(game.i);
    count = myList.length;
    print(' ╚═════════════════════════  THE END  ════════════════════════════════╝ ');
    stdout.write(" Play again (Y/N) ➜ ");
    for(;;){
      var playagin = stdin.readLineSync();
      if (playagin == "Y" || playagin == "y") {
        check = 0;
        //c = 0;
        break;
      }
      else if (playagin == "N" || playagin == "n") {
        //c += 1;
        print(" You've played $count games");
        for(int i = 0; i < myList.length ; i++){
          int n = myList[i];
          int j = i + 1;
          print("  🎲  Game $j: $n guesses");
        }
        print('  ʕ´• ᴥ•̥`ʔ');
        break;
      }
      else {
        stdout.write(" Play again (Y/N) ➜ ");
        continue;
      }
    }
  }
}
/*
/*
stdout.write(" ║ Play again (Y/N) ➜ ");
        var c = stdin.readLineSync();
        if(c == null){
            print("Plsease enter (Y/N) only");
            check = 3;
            continue;
        }
        else if(c == 'Y'){
          check = 0;
        }
        else if(c == 'N'){
          check = 1;
        }
 */
/*
int result = 0;
  var check = 0;
  var no = 1; // ปืดโปรแกรมทันที
  if (no == 1) {
    stdout.write(" Enter a maximum number to  random ➜ ");
    var input = stdin.readLineSync();
    var type = int.tryParse(input!);
    if (type == null) {
      type == 100;
    }
  }
  else {
    if (no == 1) {
      stdout.write(" Enter a maximum number to  random ➜ ");
      var input = stdin.readLineSync();
      var type = int.tryParse(input!);
      if (type == null) {
        type == 100;
      }
    }
    while (check == 0) {
      var game = Game();
      print(" ╔══════════════════GUESS THE NUMBER══════════════════════ ");
      //print(" Please guess the number between 1 and 100 inclustive ");
      do {
        stdout.write(
            " ║ Please guess the number between 1 and $type inclustive ➜ ");
        var input = stdin
            .readLineSync(); // readLineSync == อาจจะ retrue เป็น "null
        var guess = int.tryParse(input!);
        if (guess == null) {
          print(' ║ Plsease enter number only');
          continue;
        }
        result = game.getguess(guess);
        if (result == 3) {
          var input = stdin.readLineSync();
          if (input == "Y") {
            check = 0;
            no = 0;
          }
          else if (input == "N") {
            check = 1;
          }
        }
      }
      while (result != 3);
      print(' ╚═════════════════════ THE ENG ══════════════════════════ ');
    }
 */
 */