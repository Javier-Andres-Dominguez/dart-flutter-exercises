//Javier Andrés Domínguez
import 'dart:io';

//Just trying stdin.readLineSync()
void main(List<String> args) {
  print('Enter your name?');
  // Reading name of the Geek
  String? name = stdin.readLineSync();

  // Printing the name
  print('Hello, $name!');
}
