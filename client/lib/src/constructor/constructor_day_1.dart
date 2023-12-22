/// mendalami lebih lanjut mengenai constructor pada sebuah class.

void main(List<String> args) {
  BelajarConstructor belajarConstructor =
      BelajarConstructor(name: 'kupli', );
  if (belajarConstructor.nullName == null) {
    print('yes');
  } else {
    print('no');
  }
  print(belajarConstructor.greeting());
}

class BelajarConstructor {
  /// inisialisasikan variabel
  String name;
  String? nullName; // membuat null variable
  // buat sebuah constructor
  BelajarConstructor(
      {required this.name, this.nullName}); // ini constructor

  // buat sebuah fungsi greeting

  String greeting() => 'hello $name';
}
