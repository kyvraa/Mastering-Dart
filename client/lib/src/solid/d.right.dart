// RIGHT

class User {
  String name;
  int age;
  String alamat;

  User({required this.name, required this.age, required this.alamat});
}

class UserManager {
  final DataStorage dataStorage;

  UserManager({required this.dataStorage});

  void saveUserData(User user) async {
    await dataStorage.saveData(user);
  }
}

abstract class DataStorage {
  int status;
  DataStorage({required this.status});
  Future<void> saveData(User user);
}

class FirebaseStorage implements DataStorage {
  @override
  int status;
  FirebaseStorage({required this.status});
  @override
  Future<void> saveData(User user) async {
    List<Map<String, dynamic>> storage = [];
    Map<String, dynamic> data = {
      "nama": user.name,
      "age": user.age,
      "alamat": user.alamat
    };

    await Future.delayed(Duration(seconds: 1), () {
      print('Loading ....');
    });

    data.forEach((key, value) {
      if (value != null) {
        storage.add({key: data[key]});
      }
    });

    try {
      if (status == 200 && data.isNotEmpty) {
        await Future.delayed(Duration(seconds: 1), () {
          print(storage);
        }).then((_) async {
          await Future.delayed(Duration(seconds: 1));
          print('User telah ditambahkan ke dalam firebase !\n');
        });
      } else {
        throw 'kenapa ya';
      }
    } catch (e) {
      print('eror : $e');
    }
  }
}

class LocalStorage implements DataStorage {
  @override
  int status;
  LocalStorage({required this.status});
  @override
  Future<void> saveData(User user) async {
    throw UnimplementedError();
  }
}

void main(List<String> args) async {
  List<Map<String, dynamic>> data = [
    {"nama": "rifky", "age": 19, "alamat": "jalan maju mundur"},
    {"nama": "ucup", "age": 29, "alamat": "jalan maju kedepan"},
    {"nama": "samsul", "age": 69, "alamat": "jalan muter samping"},
  ];

  for (var i = 0; i < data.length; i++) {
    User user = User(
      name: data[i]["nama"],
      age: data[i]["age"],
      alamat: data[i]["alamat"],
    );
    FirebaseStorage firebaseStorage = FirebaseStorage(status: 200);
    await firebaseStorage.saveData(user);
  }
}
