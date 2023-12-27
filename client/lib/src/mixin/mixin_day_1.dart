// mixin

// simpelnya , mixin bisa ngebuat lu nge campur sebuah class

mixin class Hihi {
  String ketawa() => 'Hihihihi';
}

mixin class Huhu {
  String ketawa2() => 'Huhuhu';
}

class Haha with Huhu, Hihi {} // ga gw masukin apa" kan

void main(List<String> args) {
  Haha haha = Haha();
  print(haha.ketawa());
  print(haha.ketawa2());
}
