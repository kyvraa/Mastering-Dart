void main(List<String> args) async {
  List<String> name = [
    'rifky',
    'ririn',
    'rifky 1',
    'ririn 1',
    'rifky 2',
    'ririn 2',
    'rifky 3',
    'ririn 3',
    'rifky 4',
    'ririn 4'
  ];
  for (var i = 0; i < name.length; i++) {
    print(await getName(name[i]));
  }
}

Future<String> getName(String name) async {
  return await Future.delayed(Duration(milliseconds: 100), () => 'hello $name');
}
