void main() async {
  Future<String> data(String s) async {
    await Future.delayed(Duration(seconds: 1));
    return s;
  }

  await data('hello').then((value) {
    print('$value rifky');
  });
}
