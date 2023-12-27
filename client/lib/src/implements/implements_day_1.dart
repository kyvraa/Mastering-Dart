void main(List<String> args) {
  PersonObjek personObjek = PersonObjek(name: 'rifky');
  personObjek.status();
  personObjek.data();
}

class Person {
  String name;
  int? id;
  Person({required this.name, this.id});
}

abstract mixin class GetStatus {
  void status();
}

abstract mixin class GetData {
  void data();
}

class PersonObjek with GetStatus, GetData {
  String name;
  int? id;
  PersonObjek({required this.name, this.id});
  @override
  void status() {
    print('hallo $name , id : $id');
  }

  @override
  void data() {
    print('halo juga $name , id : $id');
  }
}
