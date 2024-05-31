class Car {
  String color;
  String model;
  String name;
  int year;
//constructor
  Car(this.color, this.model, this.name, this.year);

  //method
  void startEngine() {
    print('Engine Started');
  }
}

void main() {
  var myCar = Car('Brown', 'Venza2.0', 'Venza2.0', 2023);
  print(myCar.model);
  myCar.startEngine();
}
