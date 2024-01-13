// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unfrezeed_lanjutan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MataKuliah _$MataKuliahFromJson(Map<String, dynamic> json) {
  return _MataKuliah.fromJson(json);
}

/// @nodoc
mixin _$MataKuliah {
  List<String> get mataKuliah => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MataKuliahCopyWith<MataKuliah> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MataKuliahCopyWith<$Res> {
  factory $MataKuliahCopyWith(
          MataKuliah value, $Res Function(MataKuliah) then) =
      _$MataKuliahCopyWithImpl<$Res, MataKuliah>;
  @useResult
  $Res call({List<String> mataKuliah});
}

/// @nodoc
class _$MataKuliahCopyWithImpl<$Res, $Val extends MataKuliah>
    implements $MataKuliahCopyWith<$Res> {
  _$MataKuliahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mataKuliah = null,
  }) {
    return _then(_value.copyWith(
      mataKuliah: null == mataKuliah
          ? _value.mataKuliah
          : mataKuliah // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MataKuliahImplCopyWith<$Res>
    implements $MataKuliahCopyWith<$Res> {
  factory _$$MataKuliahImplCopyWith(
          _$MataKuliahImpl value, $Res Function(_$MataKuliahImpl) then) =
      __$$MataKuliahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> mataKuliah});
}

/// @nodoc
class __$$MataKuliahImplCopyWithImpl<$Res>
    extends _$MataKuliahCopyWithImpl<$Res, _$MataKuliahImpl>
    implements _$$MataKuliahImplCopyWith<$Res> {
  __$$MataKuliahImplCopyWithImpl(
      _$MataKuliahImpl _value, $Res Function(_$MataKuliahImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mataKuliah = null,
  }) {
    return _then(_$MataKuliahImpl(
      mataKuliah: null == mataKuliah
          ? _value.mataKuliah
          : mataKuliah // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MataKuliahImpl implements _MataKuliah {
  const _$MataKuliahImpl({required this.mataKuliah});

  factory _$MataKuliahImpl.fromJson(Map<String, dynamic> json) =>
      _$$MataKuliahImplFromJson(json);

  @override
  final List<String> mataKuliah;

  @override
  String toString() {
    return 'MataKuliah(mataKuliah: $mataKuliah)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MataKuliahImpl &&
            const DeepCollectionEquality()
                .equals(other.mataKuliah, mataKuliah));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(mataKuliah));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MataKuliahImplCopyWith<_$MataKuliahImpl> get copyWith =>
      __$$MataKuliahImplCopyWithImpl<_$MataKuliahImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MataKuliahImplToJson(
      this,
    );
  }
}

abstract class _MataKuliah implements MataKuliah {
  const factory _MataKuliah({required final List<String> mataKuliah}) =
      _$MataKuliahImpl;

  factory _MataKuliah.fromJson(Map<String, dynamic> json) =
      _$MataKuliahImpl.fromJson;

  @override
  List<String> get mataKuliah;
  @override
  @JsonKey(ignore: true)
  _$$MataKuliahImplCopyWith<_$MataKuliahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Mahasiswa _$MahasiswaFromJson(Map<String, dynamic> json) {
  return _Mahasiswa.fromJson(json);
}

/// @nodoc
mixin _$Mahasiswa {
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  set gender(String value) => throw _privateConstructorUsedError;
  String get jurusan => throw _privateConstructorUsedError;
  set jurusan(String value) => throw _privateConstructorUsedError;
  bool get mahasiswaAbadi => throw _privateConstructorUsedError;
  set mahasiswaAbadi(bool value) => throw _privateConstructorUsedError;
  int get jumlahSemester => throw _privateConstructorUsedError;
  set jumlahSemester(int value) => throw _privateConstructorUsedError;
  List<MataKuliah> get mataKuliah => throw _privateConstructorUsedError;
  set mataKuliah(List<MataKuliah> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MahasiswaCopyWith<Mahasiswa> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MahasiswaCopyWith<$Res> {
  factory $MahasiswaCopyWith(Mahasiswa value, $Res Function(Mahasiswa) then) =
      _$MahasiswaCopyWithImpl<$Res, Mahasiswa>;
  @useResult
  $Res call(
      {String name,
      String gender,
      String jurusan,
      bool mahasiswaAbadi,
      int jumlahSemester,
      List<MataKuliah> mataKuliah});
}

/// @nodoc
class _$MahasiswaCopyWithImpl<$Res, $Val extends Mahasiswa>
    implements $MahasiswaCopyWith<$Res> {
  _$MahasiswaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? gender = null,
    Object? jurusan = null,
    Object? mahasiswaAbadi = null,
    Object? jumlahSemester = null,
    Object? mataKuliah = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      jurusan: null == jurusan
          ? _value.jurusan
          : jurusan // ignore: cast_nullable_to_non_nullable
              as String,
      mahasiswaAbadi: null == mahasiswaAbadi
          ? _value.mahasiswaAbadi
          : mahasiswaAbadi // ignore: cast_nullable_to_non_nullable
              as bool,
      jumlahSemester: null == jumlahSemester
          ? _value.jumlahSemester
          : jumlahSemester // ignore: cast_nullable_to_non_nullable
              as int,
      mataKuliah: null == mataKuliah
          ? _value.mataKuliah
          : mataKuliah // ignore: cast_nullable_to_non_nullable
              as List<MataKuliah>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MahasiswaImplCopyWith<$Res>
    implements $MahasiswaCopyWith<$Res> {
  factory _$$MahasiswaImplCopyWith(
          _$MahasiswaImpl value, $Res Function(_$MahasiswaImpl) then) =
      __$$MahasiswaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String gender,
      String jurusan,
      bool mahasiswaAbadi,
      int jumlahSemester,
      List<MataKuliah> mataKuliah});
}

/// @nodoc
class __$$MahasiswaImplCopyWithImpl<$Res>
    extends _$MahasiswaCopyWithImpl<$Res, _$MahasiswaImpl>
    implements _$$MahasiswaImplCopyWith<$Res> {
  __$$MahasiswaImplCopyWithImpl(
      _$MahasiswaImpl _value, $Res Function(_$MahasiswaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? gender = null,
    Object? jurusan = null,
    Object? mahasiswaAbadi = null,
    Object? jumlahSemester = null,
    Object? mataKuliah = null,
  }) {
    return _then(_$MahasiswaImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      jurusan: null == jurusan
          ? _value.jurusan
          : jurusan // ignore: cast_nullable_to_non_nullable
              as String,
      mahasiswaAbadi: null == mahasiswaAbadi
          ? _value.mahasiswaAbadi
          : mahasiswaAbadi // ignore: cast_nullable_to_non_nullable
              as bool,
      jumlahSemester: null == jumlahSemester
          ? _value.jumlahSemester
          : jumlahSemester // ignore: cast_nullable_to_non_nullable
              as int,
      mataKuliah: null == mataKuliah
          ? _value.mataKuliah
          : mataKuliah // ignore: cast_nullable_to_non_nullable
              as List<MataKuliah>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MahasiswaImpl extends _Mahasiswa {
  _$MahasiswaImpl(
      {required this.name,
      required this.gender,
      required this.jurusan,
      required this.mahasiswaAbadi,
      this.jumlahSemester = 0,
      required this.mataKuliah})
      : super._();

  factory _$MahasiswaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MahasiswaImplFromJson(json);

  @override
  String name;
  @override
  String gender;
  @override
  String jurusan;
  @override
  bool mahasiswaAbadi;
  @override
  @JsonKey()
  int jumlahSemester;
  @override
  List<MataKuliah> mataKuliah;

  @override
  String toString() {
    return 'Mahasiswa(name: $name, gender: $gender, jurusan: $jurusan, mahasiswaAbadi: $mahasiswaAbadi, jumlahSemester: $jumlahSemester, mataKuliah: $mataKuliah)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MahasiswaImplCopyWith<_$MahasiswaImpl> get copyWith =>
      __$$MahasiswaImplCopyWithImpl<_$MahasiswaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MahasiswaImplToJson(
      this,
    );
  }
}

abstract class _Mahasiswa extends Mahasiswa {
  factory _Mahasiswa(
      {required String name,
      required String gender,
      required String jurusan,
      required bool mahasiswaAbadi,
      int jumlahSemester,
      required List<MataKuliah> mataKuliah}) = _$MahasiswaImpl;
  _Mahasiswa._() : super._();

  factory _Mahasiswa.fromJson(Map<String, dynamic> json) =
      _$MahasiswaImpl.fromJson;

  @override
  String get name;
  set name(String value);
  @override
  String get gender;
  set gender(String value);
  @override
  String get jurusan;
  set jurusan(String value);
  @override
  bool get mahasiswaAbadi;
  set mahasiswaAbadi(bool value);
  @override
  int get jumlahSemester;
  set jumlahSemester(int value);
  @override
  List<MataKuliah> get mataKuliah;
  set mataKuliah(List<MataKuliah> value);
  @override
  @JsonKey(ignore: true)
  _$$MahasiswaImplCopyWith<_$MahasiswaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
