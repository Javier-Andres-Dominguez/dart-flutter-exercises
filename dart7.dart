//Javier Andrés Domínguez
void main(List<String> args) {
  var lista = [];
  var listaDeDivisibles = [];
  //Loop that creates the list
  for (int i = 1; i < 51; i++) {
    //Input parameter
    lista.add(i);
  }
  print(lista);
  for (int i = 0; i < 50; i++) {
    if (lista[i] % 3 == 0) {
      listaDeDivisibles.add(lista[i]);
    }
  }
  print(listaDeDivisibles);
}
