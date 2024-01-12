// class Sample {
//   int angka;
//   String nama;

//   Sample({required this.angka, required this.nama});
// }

// void main() {
//   List<Sample> data = [
//     Sample(angka: 1, nama: 'John'),
//     Sample(angka: 2, nama: 'Doe'),
//   ];

//   for (var sample in data) {
//     print('Angka: ${sample.angka}, Nama: ${sample.nama}');
//   }

// }

// class Sample {
//   String nama;
//   String ambilNama() {
//     return 'hello $nama';
//   }

//   Sample({required this.nama});
// }

// void main() {
//   List<Sample> namaOrang = [Sample(nama: 'rifky'), Sample(nama: 'ririn')];

//   for (var i in namaOrang) {
//     print(i.ambilNama());
//   }
// }

class Sample {
  String name;
  int age;

  Sample(this.name, this.age);
}

class Data<T> {
  List<T> items = [];

  void addItem(T item) {
    items.add(item);
  }
}

void main() {
  Data<Sample> data = Data();

  data.addItem(Sample('SAMSUL', 25));
  data.addItem(Sample('IJUL', 30));

  for (var sample in data.items) {
    String y =
        sample.name[0].toUpperCase() + sample.name.substring(1).toLowerCase();

    print('Name: $y, Age: ${sample.age}');
  }
}
