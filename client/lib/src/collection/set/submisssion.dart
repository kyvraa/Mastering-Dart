//1. Program Kasus: Manajemen Karyawan

// Buatlah program Dart yang mengimplementasikan konsep getter dan setter untuk manajemen informasi karyawan.
// Setiap karyawan memiliki atribut nama, umur, dan gaji.
// Pastikan Anda menggunakan getter untuk mendapatkan nilai nama karyawan dan setter untuk mengubah nilai gaji karyawan.

void main() {
  Karyawan karyawan = Karyawan(nama: 'rifky', umur: 18, gaji: 10000);
  print('gaji : ${karyawan.gaji}');
  print('nama : ${karyawan.nama}');
  print('umur : ${karyawan.umur}');
  print('\n');
  karyawan.datas = ['samsul', '20', 200000];
  print('nama : ${karyawan.nama}');
  print('umur : ${karyawan.umur}');
  print('gaji : ${karyawan.gaji}');
  print('');
  print('----------------------- END --------------------------');
  print('\n');
  Perpustakaan perpustakaan =
      Perpustakaan(nama: 'ririn', harga: 40000, jumlah: 2);
  print(perpustakaan.dataBuku().map((e) => e).toList());
  perpustakaan.ubahData = ['rifky', 1000, 10];
  print(perpustakaan.dataBuku().map((e) => e).toList());
  print('');
  print('----------------------- END --------------------------');
  print('\n');
  Mahasiswa mahasiswa = Mahasiswa(nama: 'rifky', nilai: 10);
  mahasiswa.lulus = true;
  mahasiswa.checkKelulusan();
  print('');
  print('----------------------- END --------------------------');
  print('\n');
  Invest invest = Invest(nama: 'meng oyen', harga: 20000, jumlahStok: 10);
  print(invest.apalah());
  invest.barang = [15000, 5];
  print(invest.apalah());
}

class Karyawan {
  String nama;
  int umur, gaji;

  set datas(List<Object> data) {
    nama = data[0].toString();
    umur = int.tryParse(data[1] as String) ?? 0;
    gaji = data[2] as int;
  }

  Karyawan({required this.nama, required this.umur, required this.gaji});

  List<Object> get datas => [nama, umur, gaji];
}

//2. Program Kasus: Perpustakaan Buku

// Desain program Dart untuk manajemen perpustakaan buku.
// Setiap buku memiliki atribut judul, pengarang, dan jumlah halaman.
// Implementasikan getter untuk mendapatkan informasi pengarang buku dan setter untuk mengubah jumlah halaman buku.

class Perpustakaan {
  String nama;
  int jumlah, harga;

  Perpustakaan({required this.nama, required this.harga, required this.jumlah});

  List<Map<String, dynamic>> dataBuku() {
    return [
      {'nama': nama, 'jumlah': jumlah, 'harga': harga}
    ];
  }

  set ubahData(List<Object> data) {
    nama = data[0].toString();
    harga = data[1] as int;
    jumlah = data[2] as int;
  }

  List<Object> get data => [nama, harga, jumlah];
}

//3. Program Kasus: Sistem Inventaris Barang

// Buatlah program Dart untuk sistem inventaris barang. Setiap barang memiliki atribut nama, jumlah stok, dan harga.
// Desainlah kelas dengan menggunakan getter untuk mendapatkan jumlah stok barang dan setter untuk mengubah nilai harga barang.

class Invest {
  String nama;
  int jumlahStok, harga;

  set barang(List<Object> dataBarang) {
    harga = dataBarang[0] as int;
    jumlahStok = dataBarang[1] as int;
  }

  Map<String, dynamic> apalah() {
    return {
      "nama_barang": nama,
      "jumlah_stok": jumlahStok,
      "harga_barang": harga
    };
  }

  List<Object> get dataBarang => [jumlahStok, harga];

  Invest({required this.nama, required this.harga, required this.jumlahStok});
}

//4. Program Kasus: Nilai Mahasiswa

// Implementasikan program Dart yang mengelola nilai mahasiswa. Setiap mahasiswa memiliki atribut nama, nilai, dan status kelulusan.
// Desainlah getter untuk mendapatkan nilai mahasiswa dalam bentuk huruf (A, B, C, D, atau E) dan setter untuk mengubah status kelulusan.

class Mahasiswa {
  String nama;
  int nilai;
  bool lulus;

  Mahasiswa({required this.nama, required this.nilai}) : lulus = false;

  String get nilaiHuruf {
    if (nilai >= 80 && nilai <= 100) {
      return 'A';
    } else if (nilai >= 70) {
      return 'B';
    } else if (nilai >= 50) {
      return 'C';
    } else if (nilai >= 30) {
      return 'D';
    } else {
      return 'E';
    }
  }

  set statusKelulusan(bool lulus) {
    this.lulus = lulus;
  }

  void checkKelulusan() {
    if (nilai >= 40) {
      lulus = true;
      print('$nama lulus dengan nilai $nilaiHuruf');
    } else {
      print('$nama tidak lulus dengan nilai $nilaiHuruf');
    }
  }
}


//5. Program Kasus: Kendaraan

// Buatlah program Dart untuk mengelola informasi kendaraan. Setiap kendaraan memiliki atribut jenis, kecepatan, dan tahun produksi.
// Implementasikan getter untuk mendapatkan jenis kendaraan dalam huruf kapital dan setter untuk mengubah nilai kecepatan kendaraan.
