class Data {
  String name;
  int age;

  String biodata() {
    return 'hello my name $name , my age $age old y';
  }

  Data(this.age, this.name);
}

void main() {
  Data data = Data(10, 'rifky');
  void lisData(Data data) {
    print('name : ${data.name}');
    print('age : ${data.age}');
    print(data.biodata());
  }

  lisData(data);
}
