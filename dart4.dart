//Javier Andrés Domínguez
import 'dart:io';

void main(List<String> args) {
  print('Introduzca un número para su tabla de multiplicar');
  String multiplicacion = '';
  int operacion = 0;

  //Input parameter

  int numIntroducido = int.parse(stdin.readLineSync()!);
  var lista = [];

  //Loop that creates the list

  for (int i = 0; i < 10; i++) {
    operacion = i * numIntroducido;
    lista.add(multiplicacion = '$i x $numIntroducido = $operacion\n');
  }
  print('Su lista de números es\n $lista');
}
