import 'dart:convert';
// void main() {
//   Map<String, dynamic> data = {"nama": "kucing", "umur": 10};

//   Map<String, dynamic> newData = Map<String, dynamic>.from(data);
//   newData["nama"] = "samsul";
//   newData["umur"] = 20;

//   print(newData.values);
// }

void maon() {
  List<Map<String, dynamic>> data = [
    {"nama": 'rifky', 'umur': 19, "man": true},
    {"nama": 'ririn', 'umur': 17, "man": false},
    {"nama": 'samsul', 'umur': 29, "man": true},
    {"nama": 'juned', 'umur': 39, "man": true},
    {"nama": 'julie', 'umur': 10, "man": false},
  ];

  List<Map<String, dynamic>> data2 = [
    {"nama": 'rifky', 'umur': 19, "man": true},
    {"nama": 'ririn', 'umur': 17, "man": false},
    {"nama": 'samsul', 'umur': 29, "man": true},
    {"nama": 'juned', 'umur': 39, "man": true},
    {"nama": 'julie', 'umur': 10, "man": false},
  ];

  List dataPenampung = [...data, ...data2];

  // for (var bio in dataPenampung) {
  //   print('Map: $bio \n');
  // }

  dataPenampung.asMap().forEach((index, value) {
    print('Index: $index, Map: $value');
  });
}

void mains() {
  List<Dataset> dataset = [];

  List<Map<String, dynamic>> data = [
    {"name": 'rifky', 'age': 20, 'description': 'rifky is handsome'},
    {
      "name": 'Bob',
      'age': 30,
      'description': 'Bob enjoys playing musical instruments.'
    },
    {
      "name": 'Charlie',
      'age': 22,
      'description': 'Charlie is passionate about photography.'
    },
    {
      "name": 'Diana',
      'age': 28,
      'description': 'Diana loves exploring new cuisines.'
    },
    {"name": 'Ethan', 'age': 26, 'description': 'Ethan is a tech enthusiast.'},
    {
      "name": 'Fiona',
      'age': 35,
      'description': 'Fiona is a fitness enthusiast.'
    },
    {
      "name": 'George',
      'age': 23,
      'description': 'George enjoys reading science fiction.'
    },
    {"name": 'Hannah', 'age': 29, 'description': 'Hannah is a nature lover.'},
    {"name": 'Ian', 'age': 27, 'description': 'Ian is a coffee connoisseur.'},
    {
      "name": 'Jessica',
      'age': 32,
      'description': 'Jessica is a travel blogger.'
    }
  ];

  for (Map<String, dynamic> item in data) {
    dataset.add(Dataset.fromJson(item));
  }

  List<Map<String, dynamic>> jsonDataList =
      dataset.map((entry) => entry.toJson()).toList();
  String jsonString = json.encode(jsonDataList);

  print(jsonString);
}

class Dataset {
  String name;
  int age;
  String description;

  Dataset({required this.name, required this.age, required this.description});

  factory Dataset.fromJson(Map<String, dynamic> json) {
    return Dataset(
        name: json['name'], age: json['age'], description: json['description']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
      'description': description,
    };
  }
}

void main() {
  List<Map<String, dynamic>> data = [
    {"name": 'rifky', 'age': 20, 'description': 'rifky is handsome'},
    {
      "name": 'Bob',
      'age': 30,
      'description': 'Bob enjoys playing musical instruments.'
    },
    {
      "name": 'Charlie',
      'age': 22,
      'description': 'Charlie is passionate about photography.'
    },
    {
      "name": 'Diana',
      'age': 28,
      'description': 'Diana loves exploring new cuisines.'
    }
  ];

  List filter = data.where((element) => element.containsKey("name")).map((e) => e["name"].toString()).toList();
  print(filter);
}
