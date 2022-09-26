//Javier Andrés Domínguez
void main(List<String> args) {
  //Mal hecho, al intentar imprimir esta variable te dice que hay un error que se arregla
  //cambiando el tipo de variable a var o usando el null safety

  //"n" won´t work because of null safety in dart, you have to create a variable in the i case
  int n;
  //Bien hecho
  int? i;
  print(i);
}
