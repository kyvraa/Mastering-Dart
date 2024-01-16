// Right

// PRINSIP YANG BENAR

class MyRobot {
  void talk() {}

  void walk() {}
}

class MyRobotSuper extends MyRobot {
  // mending di turunin aja kan
  // gw bikin method baru yang spesifik
  // jika lu butuh method dari class sebelumnya ,tinggal panggil aja

  @override
  void talk() {
    print('robot ngomong ... bibibi biibbb bibb ');
  }

  @override
  void walk() {
    print('robot jalan ... whushhhh');
  }

  void bunuhKecoak() {
    print('plakkkk...kecoak dibunuh');
  }

  void fly() {
    print('winggggggggg');
  }
}

void main() {
  MyRobotSuper myRobotSuper = MyRobotSuper();
  myRobotSuper.talk();
  myRobotSuper.walk();
  myRobotSuper.fly();
  myRobotSuper.bunuhKecoak();
}
