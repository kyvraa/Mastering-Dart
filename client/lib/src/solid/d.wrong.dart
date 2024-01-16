// WRONG

class User {
  String name;
  int age;
  String alamat;

  User({required this.name, required this.age, required this.alamat});
}

class UserData {
  void manageUser(User user) {
    List<Map<String, dynamic>> data = [
      {"nama": user.name, "age": user.age, "alamat": user.alamat}
    ];
    for (var datas in data) {
      print(datas);
    }
  }
}

void main(List<String> args) {
  List<Map<String, dynamic>> data = [
    {"nama": "rifky", "age": 19, "alamat": "jalan maju mundur"},
    {"nama": "ucup", "age": 29, "alamat": "jalan maju kedepan"},
    {"nama": "samsul", "age": 69, "alamat": "jalan muter samping"},
  ];
  for (var i = 0; i < data.length; i++) {
    User user = User(name: data[i]["nama"], age: data[i]["age"], alamat: data[i]["alamat"]);
    UserData userData = UserData();
    userData.manageUser(user);
  }
}
