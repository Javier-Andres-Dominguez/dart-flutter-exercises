//Javier Andrés Domínguez
import 'dart:io';

void main(List<String> args) {
  print('Introduzca una lista de números de uno en uno');
  var lista = [];
  //Loop that creates the list and also check for repeated numbers to quit them
  for (int i = 0; i < 3; i++) {
    //Input parameter
    lista.add(int.parse(stdin.readLineSync()!));

    if (i >= 1) {
      for (int j = 0; j < i; j++) {
        if (lista[i] == lista[j]) {
          lista.removeAt(i);
          print('No repita los números');
          i--;
        }
      }
    }
  }
  print('Su lista de números es: $lista');
}
