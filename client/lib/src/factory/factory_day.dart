abstract class DataAnggota {
  int jumlahAnggota;
  List<String> namaAnggota;
  String ketuaAnggota;

  DataAnggota({
    required this.namaAnggota,
    required this.jumlahAnggota,
    required this.ketuaAnggota,
  });

  List<Map<String, dynamic>> data();
}

class Anggota implements DataAnggota {
  @override
  List<String> namaAnggota;
  @override
  int jumlahAnggota;
  @override
  String ketuaAnggota;

  Anggota({
    required this.jumlahAnggota,
    required this.namaAnggota,
    required this.ketuaAnggota,
  });

  @override
  List<Map<String, dynamic>> data() {
    return [
      {
        "nama": namaAnggota,
        "jumlah_anggota": jumlahAnggota,
        "ketua_anggota": ketuaAnggota,
      }
    ];
  }

  factory Anggota.asMap(List<Map<String, dynamic>> dataAnggota) {
    return Anggota(
      namaAnggota: (dataAnggota[0]["nama"]),
      jumlahAnggota: dataAnggota[0]["jumlah_anggota"],
      ketuaAnggota: dataAnggota[0]["ketua_anggota"],
    );
  }
}

void main() {
  var namaAnggota1 = [
    'meng sumbul',
    'meng ahmed',
    'meng item',
    'meng samsul',
    'meng oyen'
  ];

  Anggota anggota1 = Anggota(
    namaAnggota: namaAnggota1,
    jumlahAnggota: 5,
    ketuaAnggota: "meng oyen",
  );

  print("Anggota 1 Data:");
  anggota1.data().forEach((map) {
    map.forEach((key, value) {
      print("$key: $value");
    });
  });

  List<Map<String, dynamic>> dataAnggotaList = [
    {
      "nama": ["kiki"],
      "jumlah_anggota": 3,
      "ketua_anggota": "ririn",
    }
  ];

  Anggota anggota2 = Anggota.asMap(dataAnggotaList);

  print("\nAnggota 2 Data:");
  anggota2.data().forEach((map) {
    map.forEach((key, value) {
      print("$key: $value");
    });
  });
}
