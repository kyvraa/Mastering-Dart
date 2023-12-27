import 'package:freezed_annotation/freezed_annotation.dart';

class Parents {}

abstract mixin class ClassName {
  String ka();
}

@freezed
class Sample with ClassName implements Parents {
  @override
  String ka() {
    return 'j';
  }
}
