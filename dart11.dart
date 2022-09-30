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

abstract class Movable {
  void skid() {
    print('*skids*');
  }
}

abstract class Light {
  void flip() {
    print('*flips*');
  }
}

class Motorbike extends Vehicle with Movable, Light {
  var nWheels;
  var fuel;
}

class Scooter extends Vehicle with Movable, Light {
  var nWheels;
  var energy;
}

class Bike extends Vehicle with Movable, Light {
  var nSits;
  var energy;
}

class Car extends Vehicle with Movable {
  var nDoors;
  var fuel;
}

class Truck extends Vehicle with Movable {
  var nWheels;
  var fuel;
}

void main(List<String> args) {
  var moto = Motorbike();
  moto.fuel = 50;
  moto.nWheels = 2;
  moto.code = '4567 - das';
  moto.skid();
  var bike = Bike();
  bike.energy = 5;
  bike.nSits = 1;
  bike._driver = 'Juan';
  bike.code = 'code_example';
  bike.flip();
  var car = Car();
  car.fuel = 75;
  car.nDoors = 6;
  car.code = 'dfsf - 266';
  var truck = Truck();
  //etc
  var scooter = Scooter();
  //etc
}
