void main() {
  Map<String, dynamic> data = {"nama": "kucing", "umur": 10};

  Map<String, dynamic> newData = Map<String, dynamic>.from(data);
  newData["nama"] = "samsul";
  newData["umur"] = 20;

  print(newData.values);
}
