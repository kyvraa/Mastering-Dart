void main() {
  Car car = Car(n: 10);
  print(car.movents(10));
  Person person = Person(name: 'rifky');
  print(person.bio('ririn'));
}

abstract class Vehicle {
  int nam;
  Vehicle({required this.nam});
  int movents(int movent);
}

class Car extends Vehicle {
  int n;
  Car({required this.n}) : super(nam: n);
  @override
  int movents(int movent) {
    return movent * n;
  }
}

abstract class Ident {
  String name;
  Ident(this.name);
  String bio(String x);
}

class Person implements Ident {
  @override
  String name;
  Person({required this.name});
  @override
  String bio(String x) {
    return 'hello im $name,and this $x';
  }
}


