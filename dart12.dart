//Javier Andrés Domínguez
import 'dart:math';

//This exercise generates 10 random numbers between 1 and 10
void main(List<String> args) {
  var randomNum = Random();
  for (var i = 0; i < 10; i++) {
    print(randomNum.nextInt(9) + 1);
  }
}
