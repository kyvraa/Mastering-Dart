// RIGHT ARSITEKTUR

class Duck {
  void swim() {}

  void quack() {}

  void eat() {
    print('bebek makan wek wek');
  }
}

class Malard extends Duck {
  @override
  void eat() {
    print('bebek malard makannya sambil duduk');
  }
}

void main(List<String> args) {
  Duck duck = Duck();
  duck.eat();
  Malard malard = Malard();
  malard.eat();
}
