import "dart:math";
import 'dart:io';
enum option {rock,paper,scissors}

void main(){
    int counter=0,ccounter=0;
     var move,move2;

while(true){
var rng = Random();
 int a= rng.nextInt(3);


 if(a == 0){
 move=option.rock;
 }
 else if(a==1){
  move=option.paper;
 }
 else {
 move=option.scissors;
 }



 print("Please enter a number including 0-Rock,1-Paper,2-Scissors  ");
 int value =int.parse (stdin.readLineSync()!);

  if(value==0){
   
   move2=option.rock;
  
  }
  else if(value==1){
   move2=option.paper;
  }
  else if(value==2){
   move2=option.scissors;
  }
  else{
    print("ERROR");
  }




if(move==option.rock && move2==option.rock){
print("DRAW");
}
else if(move==option.rock && move2==option.paper){
print("You won this round because computer chose rock");

counter++;
}

else if(move==option.rock && move2==option.scissors){
print("Computer won this round because it chose rock");
ccounter++;
}

else if(move==option.paper && move2==option.rock){
print("Computer won this round  because it chose paper");
ccounter++;
}
else if(move==option.paper && move2==option.paper){
print("DRAW");
}
else if(move==option.paper && move2==option.scissors){
print("Computer won this round because it chose paper");
ccounter++;
}
else if(move==option.scissors && move2==option.rock){
print("You won this round because computer chose scissors");
counter++;
}
else if(move==option.scissors && move2==option.paper){
print("Computer won this round because it chose scissors");
ccounter++;
}
else if(move==option.scissors && move2==option.scissors){
print("DRAW");
}
if(counter==3){
  print("YOU HAVE WON THE GAME");
  break;
}
else if(ccounter==3){
  print("COMPUTER HAS WON THE GAME");
  break;
}

  }}