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

class Scooter extends Vehicle {
  var nWheels;
  var energy;

  flip() => print('*flips*');
}

class Bike extends Vehicle {
  var nSits;
  var energy;

  flip() => print('*flips*');
}

class Car extends Vehicle {
  var nDoors;
  var fuel;

  skid() => print('*skids*');
}

class Truck extends Vehicle {
  var nWheels;
  var fuel;

  deposit() => print('*deposits*');
}

void main(List<String> args) {}
