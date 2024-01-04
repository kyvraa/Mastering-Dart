void main(List<String> args) {
  Data data = Data(num: 10);
  print(data.num);
}

final class Corporate {
  int num;
  Corporate({required this.num});
}

base class Data extends Corporate {
  Data({required int num}) : super(num: num);
}
