//  1. Interface PeminjamanBuku

// Budi perlu membuat sebuah interface PeminjamanBuku yang akan diimplementasikan oleh kelas AnggotaPerpustakaan. Interface ini harus memiliki beberapa metode:

// pinjamBuku: Metode ini digunakan untuk meminjam buku. Dapat menerima parameter seperti ID buku atau informasi buku yang akan dipinjam.
// kembalikanBuku: Metode ini digunakan untuk mengembalikan buku yang telah dipinjam.
// Mungkin memerlukan parameter seperti ID buku atau informasi buku yang dikembalikan.
// perpanjangPeminjaman: Metode ini digunakan untuk memperpanjang masa peminjaman buku yang sedang dipinjam.
// Mungkin memerlukan parameter seperti ID buku atau informasi buku yang akan diperpanjang.

// // 2. Kelas AnggotaPerpustakaan

// Budi kemudian membuat kelas AnggotaPerpustakaan yang mengimplementasikan interface PeminjamanBuku.
// Kelas ini akan merepresentasikan seorang anggota perpustakaan dengan kemampuan untuk meminjam,
// mengembalikan, dan memperpanjang peminjaman buku. Beberapa hal yang perlu dipertimbangkan:

// Properti untuk menyimpan informasi anggota perpustakaan seperti nama, nomor anggota, dan riwayat peminjaman.
// Implementasi metode-metode dari interface PeminjamanBuku sesuai dengan logika bisnis perpustakaan.

// // 3. Kelas Buku
// Budi juga membuat kelas Buku sebagai representasi buku di perpustakaan. Kelas ini mungkin memiliki properti seperti judul,
//  pengarang, ID buku, dan status (tersedia atau sedang dipinjam). Beberapa hal yang perlu dipertimbangkan:

// Properti untuk menyimpan informasi buku seperti judul, pengarang, dan status peminjaman.
// Metode untuk memperbarui status buku (misalnya, saat dipinjam atau dikembalikan).

// // 4. Program Utama

// Budi kemudian membuat program utama untuk menguji fungsionalitas peminjaman buku.
// Dia membuat objek dari kelas AnggotaPerpustakaan dan Buku, lalu memanggil metode-metode pinjamBuku, kembalikanBuku,
// dan perpanjangPeminjaman untuk mengelola peminjaman buku.

// // Catatan:

// Pastikan bahwa kelas-kelas yang Budi buat mengikuti kontrak yang ada dalam interface PeminjamanBuku.
// Budi bisa menambahkan properti dan metode sesuai kebutuhan untuk mencapai fungsionalitas yang diinginkan dalam sistem perpustakaan.

// 1. Interface PeminjamanBuku

abstract class PeminjamanBuku {
  List<Map<String, dynamic>> pinjamBuku(int id, String namaBuku);
  void kembalikanBuku(String namaBuku);
  void perpanjangPeminjaman(int id);
}

// 2. Kelas AnggotaPerpustakaan

class AnggotaPerpustakaan implements PeminjamanBuku {
  String nama;
  int nomorAnggota;
  List<Map<String, dynamic>> riwayatPeminjaman = [];

  AnggotaPerpustakaan(this.nama, this.nomorAnggota);

  @override
  List<Map<String, dynamic>> pinjamBuku(int id, String namaBuku) {
    Map<String, dynamic> peminjaman = {
      'id': id,
      'namaBuku': namaBuku,
      'tanggalPeminjaman': DateTime.now().day,
    };
    riwayatPeminjaman.add(peminjaman);
    print(
        '$nama meminjam buku $namaBuku. pada tanggal ${peminjaman["tanggalPeminjaman"]}');
    return riwayatPeminjaman;
  }

  @override
  void kembalikanBuku(String namaBuku) {
    riwayatPeminjaman
        .removeWhere((peminjaman) => peminjaman['namaBuku'] == namaBuku);
    print('$nama mengembalikan buku dengan judul $namaBuku.');
  }

  @override
  void perpanjangPeminjaman(int id) {
    print('$nama memperpanjang peminjaman buku dengan ID $id.');
  }
}

// 3. Kelas Buku

class Buku {
  String judul;
  String pengarang;
  int namaBuku;
  bool tersedia;

  Buku(this.judul, this.pengarang, this.namaBuku, this.tersedia);

  void perbaruiStatusBuku(bool status) {
    tersedia = status;
  }
}

// 4. Program Utama

void main() {
  // Membuat objek AnggotaPerpustakaan dan Buku
  AnggotaPerpustakaan anggota = AnggotaPerpustakaan("Budi", 123);
  Buku buku = Buku("Harry Potter", "J.K. Rowling", 2, true);

  // Meminjam buku
  anggota.pinjamBuku(buku.namaBuku, buku.judul);

  // Mengembalikan buku
  // anggota.kembalikanBuku(buku.namaBuku);

  // tanggal peminjaman

  // Memperpanjang peminjaman
  anggota.perpanjangPeminjaman(buku.namaBuku);
}
