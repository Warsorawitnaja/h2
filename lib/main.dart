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
    stdout.write(" Enter a maximum number to random โ ");
    var input = stdin.readLineSync();
    var type = int.tryParse(input!);
    if (type == null) {
      type = 100;
    }
    var game = Game(maxRandom: type);
    print('                                ๐ฎ                              ');
    print(" โโโโโโโโโโโโโโโโโโโโโโโโ GUESS THE NUMBER โโโโโโโโโโโโโโโโโโโโโโโโโโโ ");
    //print(" Please guess the number between 1 and 100 inclustive ");
    do {
      stdout.write(
          " โ Please guess the number between 1 and $type inclustive โ ");
      var input = stdin
          .readLineSync(); // readLineSync == เธญเธฒเธเธเธฐ retrue เนเธเนเธ "null
      var guess = int.tryParse(input!);
      if (guess == null) {
        print(' โ Plsease enter number only');
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
    print(' โโโโโโโโโโโโโโโโโโโโโโโโโโ  THE END  โโโโโโโโโโโโโโโโโโโโโโโโโโโโโโโโโ ');
    stdout.write(" Play again (Y/N) โ ");
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
          print("  ๐ฒ  Game $j: $n guesses");
        }
        print('  สยดโข แดฅโขฬฅ`ส');
        break;
      }
      else {
        stdout.write(" Play again (Y/N) โ ");
        continue;
      }
    }
  }
}
/*
/*
stdout.write(" โ Play again (Y/N) โ ");
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
  var no = 1; // เธเธทเธเนเธเธฃเนเธเธฃเธกเธเธฑเธเธเธต
  if (no == 1) {
    stdout.write(" Enter a maximum number to  random โ ");
    var input = stdin.readLineSync();
    var type = int.tryParse(input!);
    if (type == null) {
      type == 100;
    }
  }
  else {
    if (no == 1) {
      stdout.write(" Enter a maximum number to  random โ ");
      var input = stdin.readLineSync();
      var type = int.tryParse(input!);
      if (type == null) {
        type == 100;
      }
    }
    while (check == 0) {
      var game = Game();
      print(" โโโโโโโโโโโโโโโโโโโGUESS THE NUMBERโโโโโโโโโโโโโโโโโโโโโโ ");
      //print(" Please guess the number between 1 and 100 inclustive ");
      do {
        stdout.write(
            " โ Please guess the number between 1 and $type inclustive โ ");
        var input = stdin
            .readLineSync(); // readLineSync == เธญเธฒเธเธเธฐ retrue เนเธเนเธ "null
        var guess = int.tryParse(input!);
        if (guess == null) {
          print(' โ Plsease enter number only');
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
      print(' โโโโโโโโโโโโโโโโโโโโโโ THE ENG โโโโโโโโโโโโโโโโโโโโโโโโโโ ');
    }
 */
 */