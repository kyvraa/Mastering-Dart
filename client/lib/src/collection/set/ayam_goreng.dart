void main(List<String> args) {
  Circle circle = Circle(10);
  circle.radius = 1020;
  print(circle.radius);

  UbahName ubahName = UbahName('rifky');
  ubahName.gantiNama = 'samsul';
  print(ubahName.n);

  ManageUser manageUser = ManageUser(false);
  manageUser.auth = true;
  print(manageUser.msg());
}

class Circle {
  double _radius = 0;

  Circle(double radius) {
    _radius = radius;
  }

  set radius(double value) {
    if (value >= 0) {
      _radius = value;
    }
  }

  double get radius => _radius;
}

class UbahName {
  String nama;

  set gantiNama(String name) {
    nama = name;
  }

  UbahName(this.nama);

  String get n => nama;
}

class ManageUser {
  bool isAuth;

  set auth(bool y) {
    isAuth = y;
  }

  String msg() {
    return isAuth ? 'mantap' : 'males';
  }

  bool get u => isAuth;

  ManageUser(this.isAuth);
}
