class Car {
  //Atributtes
  var type;
  var code;
  //Method that returns state
  bool on(bool estate) {
    return estate;
  }

  //Method that returns car alarm
  void key() {
    print('*bip bip*');
  }
}

void main(List<String> args) {
  var coche = new Car();
  coche.type = 'mercedes';
  coche.code = 'SDAS - 48A';
  coche.on(true);
  coche.key();
}
