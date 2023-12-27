/// mendalami lebih lanjut mengenai constructor pada sebuah class.

void main(List<String> args) {
  BelajarConstructor belajarConstructor = BelajarConstructor(
    name: 'kupli',
  );
  if (belajarConstructor.nullName == null) {
    print('yes');
  } else {
    print('no');
  }
  print(belajarConstructor.greeting());

  // bang  super
  BelajarConstructor2 belajarConstructor2 =
      BelajarConstructor2(20, 'hog rider');

  print(belajarConstructor2.age);
  print(belajarConstructor2.name);

  BelajarConstructorSuper belajarConstructorSuper =
      BelajarConstructorSuper(19, 'rifky');
  print(belajarConstructorSuper.age);
  print(belajarConstructorSuper.name);
}

class BelajarConstructor {
  /// inisialisasikan variabel
  String name;
  String? nullName; // membuat null variable
  // buat sebuah constructor
  BelajarConstructor({required this.name, this.nullName}); // ini constructor
  // ini kamu , h3h3

  // buat sebuah fungsi greeting

  String greeting() => 'hello $name';
}

class BelajarConstructor2 {
  int age;
  String name;

  BelajarConstructor2(this.age, this.name);
}

class BelajarConstructorSuper extends BelajarConstructor2 {
  BelajarConstructorSuper(int age2, String name2) : super(age2, name2);

  String bio() =>
      'Hello my name $name , and my age is ${age.toString()} old years';
}
