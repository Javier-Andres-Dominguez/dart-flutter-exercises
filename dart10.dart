abstract class Vehicle {
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

  //Method that returns alarm
  key() => print('*bip bip*');
}

class Motorbike extends Vehicle {
  var nWheels;
  var fuel;

  flip() => print('*flips*');
}

class Car extends Vehicle {
  var nDoors;
  var fuel;

  skid() => print('*skids*');
}

void main(List<String> args) {
  var moto = Motorbike();
  moto.type = 'mercedes';
  moto.code = 'SDAS - 48A';
  moto._driver = 'Juan';
  moto.nWheels = 3;
  moto.fuel = 50;
  moto.flip();
  moto.key();

  var coche = Car();
  coche.type = 'mercedes';
  coche.code = 'SDAS - 48A';
  coche._driver = 'Juan';
  coche.nDoors = 4;
  coche.fuel = 100;
  coche.skid();
  coche.key();
}
