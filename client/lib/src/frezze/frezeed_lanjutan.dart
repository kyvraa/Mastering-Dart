import 'package:freezed_annotation/freezed_annotation.dart';

part 'frezeed_lanjutan.freezed.dart';
part 'frezeed_lanjutan.g.dart';

//   dart run build_runner build --delete-conflicting-outputs

// frezed model class // frezed / unfrezeed

// bersifat imuttable, yang artinya objek statenya tidak dapat dirubah nilainya.

@freezed
class User with _$User {
 const factory User(
      {required String name,
      @Default(0) int age,
      required String password}) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

void main(List<String> args) {
  User user = User(name: 'rifky firmansyah', password: '1010101');
  print(user);
  User user2 = user.copyWith(name: 'ririn');


  print(user2.toJson());

  User user3 = User.fromJson(
      {'name': 'kucing meong', 'age': 20, 'password': '82828282'});
  print(user3);

  //
}


// unfrezed model class


