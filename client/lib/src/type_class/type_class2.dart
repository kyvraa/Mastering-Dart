class Data {
  String name;
  int age;

  set changeData(List<Object> props) {
    name = props[0] as String;
    age = props[1] as int;
  }

  Data(this.age, this.name);

  List<Object> get props => [name, age];
}

// void main() {
//   Data data = Data(10, 'rifky');
//   void lisData(Data data) {
//     print('name : ${data.name}');
//     print('age : ${data.age}');
//     print(data.biodata());
//   }

//   lisData(data);
// }

class PenampungData {
  List<Data> data;
  PenampungData({required this.data});
}

void main() {
  Data datas = Data(10, 'meng oyen');
  print(datas.name);
  datas.changeData = ['kucing jago', 19];
  print(datas.name);
  List<List<Data>> data = [];
  List<Map<String, dynamic>> dataOrang = [
    {"nama": "rifky", "age": 19},
    {"nama": "ucup", "age": 419},
    {"nama": "ririn", "age": 200000},
  ];

  for (var i = 0; i < dataOrang.length; i++) {
    PenampungData penampungData =
        PenampungData(data: [Data(dataOrang[i]["age"], dataOrang[i]["nama"])]);
    data.add(penampungData.data);
  }

  for (var i = 0; i < data.length; i++) {
    for (var j = 0; j < data[i].length; j++) {
      print('Name: ${data[i][j].name}');
      print('Age: ${data[i][j].age}\n');
    }
  }
}
