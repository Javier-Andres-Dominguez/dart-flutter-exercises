class Car {
  //Atributtes
  var type;
  var code;
  var _driver;
  //Getter
  String get driver {
    return _driver;
  }

  //Setter
  set conductor(String driver) {
    this._driver = driver;
  }

  //Method that returns state
  bool on(bool estado) {
    return estado;
  }

  //Method that returns car alarm
  void key() {
    print('*bip bip*');
  }
}

void main(List<String> args) {
  var car = new Car();
  car.type = 'mercedes';
  car.code = 'SDAS - 48A';
  car._driver = 'Juan';
  car.on(true);
  car.key();
  print(car.driver);
}
