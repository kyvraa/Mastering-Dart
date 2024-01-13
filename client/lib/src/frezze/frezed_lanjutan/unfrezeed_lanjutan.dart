import 'package:freezed_annotation/freezed_annotation.dart';
part 'unfrezeed_lanjutan.freezed.dart';
part 'unfrezeed_lanjutan.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class MataKuliah with _$MataKuliah {
  const factory MataKuliah({required List<String> mataKuliah}) = _MataKuliah;

  factory MataKuliah.fromJson(Map<String, dynamic> json) =>
      _$MataKuliahFromJson(json);
}

// unfrezzed model class

@unfreezed
class Mahasiswa with _$Mahasiswa {
  const Mahasiswa._();
  factory Mahasiswa({
    required String name,
    required String gender,
    required String jurusan,
    required bool mahasiswaAbadi,
    @Default(1) int jumlahSemester,
    required List<MataKuliah> mataKuliah,
  }) = _Mahasiswa;

  factory Mahasiswa.fromJson(Map<String, dynamic> json) =>
      _$MahasiswaFromJson(json);

  set getGender(List<Object> data) {
    gender = data[0] as String;
  }

  List<Object> get data => [gender];
}

void main(List<String> args) {
  Mahasiswa mahasiswa = Mahasiswa(
      name: 'rifky',
      gender: 'pria',
      jurusan: 'Teknik informatika',
      jumlahSemester: 14,
      mahasiswaAbadi: true,
      mataKuliah: [
        MataKuliah(mataKuliah: [
          'algoritma pemrograman',
          'kalkulus 2',
          'Komputasi data'
        ])
      ]);

  mahasiswa.mataKuliah.add(MataKuliah(
      mataKuliah: ['Aljabar boolean', 'sistem Operasi', 'Komputer grafik']));

  mahasiswa.getGender = ['kucing'];

  print(
      'Nama : ${mahasiswa.name} , gender : ${mahasiswa.gender}, jurusan : ${mahasiswa.jurusan} , jumlah semester : ${mahasiswa.jumlahSemester} , Mahasiswa abadi : ${mahasiswa.mahasiswaAbadi} , Mata kuliah yang diambil ${mahasiswa.mataKuliah}');
  print('\n');

  Mahasiswa copy = mahasiswa.copyWith(
      name: 'samsul', mahasiswaAbadi: false, jumlahSemester: 8);
  print(
      'Nama : ${copy.name} , jurusan : ${copy.jurusan} , jumlah semester : ${copy.jumlahSemester} , Mahasiswa abadi : ${copy.mahasiswaAbadi} , Mata kuliah yang diambil ${copy.mataKuliah}');
}
