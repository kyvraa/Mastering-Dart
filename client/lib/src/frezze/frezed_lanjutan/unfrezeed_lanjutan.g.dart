// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unfrezeed_lanjutan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MataKuliahImpl _$$MataKuliahImplFromJson(Map<String, dynamic> json) =>
    _$MataKuliahImpl(
      mataKuliah: (json['mataKuliah'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$MataKuliahImplToJson(_$MataKuliahImpl instance) =>
    <String, dynamic>{
      'mataKuliah': instance.mataKuliah,
    };

_$MahasiswaImpl _$$MahasiswaImplFromJson(Map<String, dynamic> json) =>
    _$MahasiswaImpl(
      name: json['name'] as String,
      gender: json['gender'] as String,
      jurusan: json['jurusan'] as String,
      mahasiswaAbadi: json['mahasiswaAbadi'] as bool,
      jumlahSemester: json['jumlahSemester'] as int? ?? 0,
      mataKuliah: (json['mataKuliah'] as List<dynamic>)
          .map((e) => MataKuliah.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MahasiswaImplToJson(_$MahasiswaImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'gender': instance.gender,
      'jurusan': instance.jurusan,
      'mahasiswaAbadi': instance.mahasiswaAbadi,
      'jumlahSemester': instance.jumlahSemester,
      'mataKuliah': instance.mataKuliah,
    };
