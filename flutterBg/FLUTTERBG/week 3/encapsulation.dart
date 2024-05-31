class Person {
  String name;
  int _age;

  Person(this.name, this._age);

  //getter
  int get age => _age;
}

void main(List<String> args) {
  var person = Person('Dele', 97);
  print(person.name);
  print(person.age);
}
