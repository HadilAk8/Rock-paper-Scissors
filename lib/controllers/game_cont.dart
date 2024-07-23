import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'dart:math';

class GameController extends GetxController implements GetxService{

int _randomNumber=4;
int get randomNumber => _randomNumber; 
String message ="choose one";
int nbG=0;
int nbR=0;
int _selectedButton = 4;
int get selectedButton => _selectedButton;
int _lost=0;
int get lost => _lost;


chageSelectedButton(int nb){
  _selectedButton = nb ; 
}

int robotChoose(){
  Random random = Random();
  _randomNumber = random.nextInt(3);
  return _randomNumber;
}

gameCom(int robot , int gamer){
  if(robot == gamer){
    message = "Egalité! Try agin";
    _lost=1;
  }else if((robot==0 && gamer==1)||(robot==1 && gamer==2)||(robot==2 && gamer==0)){
    message = "you win!! Try agin";
    nbG++;
    _lost=1;
  }else{
    message = "you lose!! Try agin";
    nbR++;
    _lost = 2;
  }
  update();
}

replay(){
  _randomNumber = 4;
  _selectedButton = 4;
  nbG=0;
  nbR=0;
  _lost = 0;
  message ="choose one";
  update();
}

}