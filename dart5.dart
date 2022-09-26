//Javier Andrés Domínguez
import 'dart:io';

void main(List<String> args) {
  print('Introduzca una lista de números de uno en uno');
  var lista = [];

  //Loop that makes the list

  for (int i = 0; i < 3; i++) {
    //Input parameter

    lista.add(int.parse(stdin.readLineSync()!));
  }
  print('Su lista de números es: $lista');
}
